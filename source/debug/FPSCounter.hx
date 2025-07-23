package debug;

import flixel.FlxG;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.system.System;

/**
	The FPS class provides an easy-to-use monitor to display
	the current frame rate of an OpenFL project
**/
class FPSCounter extends TextField
{
	/**
		The current frame rate, expressed using frames-per-second
	**/
	public static var currentFPS(default, null):Int;
	
	/**
		The current memory usage (WARNING: this is NOT your total program memory usage, rather it shows the garbage collector memory)
	**/
	public var memoryMegas(get, never):Float;
	
	/**
		When memory usage reaches its highest
	**/
	private var memPeak:Float;
	
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

	public dynamic function updateText():Void { // so people can override it in hscript
		if (memoryMegas > memPeak) memPeak = memoryMegas;
		text = (showFPS ? 'FPS: ${currentFPS}' : "")
			+ (showMem ? '\nRAM: ${flixel.util.FlxStringUtil.formatBytes(memoryMegas)}' : "")
			+ (showMemPeak ? '\nRAM Peak: ${flixel.util.FlxStringUtil.formatBytes(memPeak)}' : "");

		textColor = 0xFFFFFFFF;
		if (currentFPS < FlxG.drawFramerate * 0.5)
			textColor = 0xFFFF0000;
	}
	inline function get_memoryMegas():Float
		return cpp.vm.Gc.memInfo64(cpp.vm.Gc.MEM_INFO_USAGE);
}