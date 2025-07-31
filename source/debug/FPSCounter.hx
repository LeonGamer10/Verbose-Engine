package debug;

import flixel.FlxG;
import vslice.funkin.util.MemoryUtil;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.system.System;

/**
	The FPS class provides an easy-to-use monitor to display
	the current frame rate of an OpenFL project
**/
class FPSCounter extends TextField
{
	public static var currentFPS(default, null):Int;
	
	static final BYTES_PER_MEG:Float = 1024 * 1024;
	static final ROUND_TO:Float = 1 / 100;

	private var memPeak:Float = 0;
	
	public var showFPS:Bool = true;
	public var showMem:Bool = false;
	public var showMemPeak:Bool = false;
	
	public static var fontName:String = "_sans";

	@:noCompletion private var times:Array<Float>;

	public function new(x:Float = 10, y:Float = 10, color:Int = 0x000000)
	{
		super();

		this.x = x;
		this.y = y;

		currentFPS = 0;
		selectable = false;
		mouseEnabled = false;
		defaultTextFormat = new TextFormat(fontName, 12, color);
		autoSize = LEFT;
		multiline = true;
		text = "FPS: ";

		times = [];
		
		showFPS = ClientPrefs.data.showFPS;
		showMem = ClientPrefs.data.showMem;
		showMemPeak = ClientPrefs.data.showMemPeak;
	}

	var deltaTimeout:Float = 0.0;

	// Event Handlers
	private override function __enterFrame(deltaTime:Float):Void
	{
		final now:Float = haxe.Timer.stamp();
		times.push(now);
		while (times[0] < now - 1000) times.shift();
		// prevents the overlay from updating every frame, why would you need to anyways @crowplexus
		if (deltaTimeout < 1000) {
			deltaTimeout += deltaTime;
			return;
		}

		currentFPS = times.length < FlxG.drawFramerate ? times.length : FlxG.drawFramerate;		
		updateText();
		deltaTimeout = 0.0;
	}

	// so people can override it in hscript
	public dynamic function updateText():Void
	{ 
		var mem:Float = Math.fround(MemoryUtil.getMemoryUsed() / BYTES_PER_MEG / ROUND_TO) * ROUND_TO;

		if (mem > memPeak) memPeak = mem;

		text = (showFPS ? 'FPS: ${currentFPS}' : "") + (showMem ? '\nRAM: ${mem} MB' : "") + (showMemPeak ? '\nRAM Peak: ${memPeak} MB' : "");

		textColor = 0xFFFFFFFF;
		if (ClientPrefs.data.colorFilter == "Invert")
			textColor = 0xFF000000;
		if (currentFPS < FlxG.drawFramerate * 0.5)
			textColor = 0xFFFF0000;
	}
	inline function get_memoryMegas():Float
		return cpp.vm.Gc.memInfo64(cpp.vm.Gc.MEM_INFO_USAGE);
}