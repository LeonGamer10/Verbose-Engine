package backend.sounds;

// This was made because the old system stopped working?? Idk ill find a way to fix this soon

class Hitsounds
{
	public static function loadSound()
	{
		if (ClientPrefs.data.hitsoundType == 'Absorb')
			Paths.sound('hitsounds/absorb');

		if (ClientPrefs.data.hitsoundType == 'Audience')
			Paths.sound('hitsounds/audience');

		if (ClientPrefs.data.hitsoundType == 'Beep')
			Paths.sound('hitsounds/beep');

		if (ClientPrefs.data.hitsoundType == 'Beep 2')
			Paths.sound('hitsounds/beep-2');

		if (ClientPrefs.data.hitsoundType == 'Bells')
			Paths.sound('hitsounds/bells');

		if (ClientPrefs.data.hitsoundType == 'Bells 2')
			Paths.sound('hitsounds/bells-2');

		if (ClientPrefs.data.hitsoundType == 'Bongo')
			Paths.sound('hitsounds/bongo');

		if (ClientPrefs.data.hitsoundType == 'Clank')
			Paths.sound('hitsounds/clank');

		if (ClientPrefs.data.hitsoundType == 'Clank 2')
			Paths.sound('hitsounds/clank-2');

		if (ClientPrefs.data.hitsoundType == 'Clap')
			Paths.sound('hitsounds/clap');

		if (ClientPrefs.data.hitsoundType == 'Clap 2')
			Paths.sound('hitsounds/clap-2');

		if (ClientPrefs.data.hitsoundType == 'Clap 3')
			Paths.sound('hitsounds/clap-3');

		if (ClientPrefs.data.hitsoundType == 'Cymbal')
			Paths.sound('hitsounds/cymbal');

		if (ClientPrefs.data.hitsoundType == 'Drum')
			Paths.sound('hitsounds/drum');

		if (ClientPrefs.data.hitsoundType == 'Echoclap')
			Paths.sound('hitsounds/echoclap');

		if (ClientPrefs.data.hitsoundType == 'Golf Hit')
			Paths.sound('hitsounds/golf-hit');

		if (ClientPrefs.data.hitsoundType == 'Hi-hat')
			Paths.sound('hitsounds/hi-hat');

		if (ClientPrefs.data.hitsoundType == 'Key Jingling')
			Paths.sound('hitsounds/key-jingling');

		if (ClientPrefs.data.hitsoundType == 'osu!')
			Paths.sound('hitsounds/osu!');

		if (ClientPrefs.data.hitsoundType == 'Shot')
			Paths.sound('hitsounds/shot');

		if (ClientPrefs.data.hitsoundType == 'Snare')
			Paths.sound('hitsounds/snare');

		if (ClientPrefs.data.hitsoundType == 'Switch')
			Paths.sound('hitsounds/switch');

		if (ClientPrefs.data.hitsoundType == 'Wood')
			Paths.sound('hitsounds/wood');
	}

	public static function onHit()
	{
		if (ClientPrefs.data.hitsoundType == 'Absorb')
			FlxG.sound.play(Paths.sound('hitsounds/absorb'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Audience')
			FlxG.sound.play(Paths.sound('hitsounds/audience'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Beep')
			FlxG.sound.play(Paths.sound('hitsounds/beep'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Beep 2')
			FlxG.sound.play(Paths.sound('hitsounds/beep-2'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Bells')
			FlxG.sound.play(Paths.sound('hitsounds/bells'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Bells 2')
			FlxG.sound.play(Paths.sound('hitsounds/bells-2'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Bongo')
			FlxG.sound.play(Paths.sound('hitsounds/bongo'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Clank')
			FlxG.sound.play(Paths.sound('hitsounds/clank'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Clank 2')
			FlxG.sound.play(Paths.sound('hitsounds/clank-2'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Clap')
			FlxG.sound.play(Paths.sound('hitsounds/clap'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Clap 2')
			FlxG.sound.play(Paths.sound('hitsounds/clap-2'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Clap 3')
			FlxG.sound.play(Paths.sound('hitsounds/clap-3'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Cymbal')
			FlxG.sound.play(Paths.sound('hitsounds/cymbal'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Drum')
			FlxG.sound.play(Paths.sound('hitsounds/drum'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Echoclap')
			FlxG.sound.play(Paths.sound('hitsounds/echoclap'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Golf Hit')
			FlxG.sound.play(Paths.sound('hitsounds/golf-hit'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Hi-hat')
			FlxG.sound.play(Paths.sound('hitsounds/hi-hat'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Key Jingling')
			FlxG.sound.play(Paths.sound('hitsounds/key-jingling'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'osu!')
			FlxG.sound.play(Paths.sound('hitsounds/osu!'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Shot')
			FlxG.sound.play(Paths.sound('hitsounds/shot'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Snare')
			FlxG.sound.play(Paths.sound('hitsounds/snare'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Switch')
			FlxG.sound.play(Paths.sound('hitsounds/switch'), ClientPrefs.data.hitsoundVolume);

		if (ClientPrefs.data.hitsoundType == 'Wood')
			FlxG.sound.play(Paths.sound('hitsounds/wood'), ClientPrefs.data.hitsoundVolume);
	}

	public static function onHitDefault()
	{
		if (ClientPrefs.data.hitsoundType == 'Absorb')
			FlxG.sound.play(Paths.sound('hitsounds/absorb'));

		if (ClientPrefs.data.hitsoundType == 'Audience')
			FlxG.sound.play(Paths.sound('hitsounds/audience'));

		if (ClientPrefs.data.hitsoundType == 'Beep')
			FlxG.sound.play(Paths.sound('hitsounds/beep'));

		if (ClientPrefs.data.hitsoundType == 'Beep 2')
			FlxG.sound.play(Paths.sound('hitsounds/beep-2'));

		if (ClientPrefs.data.hitsoundType == 'Bells')
			FlxG.sound.play(Paths.sound('hitsounds/bells'));

		if (ClientPrefs.data.hitsoundType == 'Bells 2')
			FlxG.sound.play(Paths.sound('hitsounds/bells-2'));

		if (ClientPrefs.data.hitsoundType == 'Bongo')
			FlxG.sound.play(Paths.sound('hitsounds/bongo'));

		if (ClientPrefs.data.hitsoundType == 'Clank')
			FlxG.sound.play(Paths.sound('hitsounds/clank'));

		if (ClientPrefs.data.hitsoundType == 'Clank 2')
			FlxG.sound.play(Paths.sound('hitsounds/clank-2'));

		if (ClientPrefs.data.hitsoundType == 'Clap')
			FlxG.sound.play(Paths.sound('hitsounds/clap'));

		if (ClientPrefs.data.hitsoundType == 'Clap 2')
			FlxG.sound.play(Paths.sound('hitsounds/clap-2'));

		if (ClientPrefs.data.hitsoundType == 'Clap 3')
			FlxG.sound.play(Paths.sound('hitsounds/clap-3'));

		if (ClientPrefs.data.hitsoundType == 'Cymbal')
			FlxG.sound.play(Paths.sound('hitsounds/cymbal'));

		if (ClientPrefs.data.hitsoundType == 'Drum')
			FlxG.sound.play(Paths.sound('hitsounds/drum'));

		if (ClientPrefs.data.hitsoundType == 'Echoclap')
			FlxG.sound.play(Paths.sound('hitsounds/echoclap'));

		if (ClientPrefs.data.hitsoundType == 'Golf Hit')
			FlxG.sound.play(Paths.sound('hitsounds/golf-hit'));

		if (ClientPrefs.data.hitsoundType == 'Hi-hat')
			FlxG.sound.play(Paths.sound('hitsounds/hi-hat'));

		if (ClientPrefs.data.hitsoundType == 'Key Jingling')
			FlxG.sound.play(Paths.sound('hitsounds/key-jingling'));

		if (ClientPrefs.data.hitsoundType == 'osu!')
			FlxG.sound.play(Paths.sound('hitsounds/osu!'));

		if (ClientPrefs.data.hitsoundType == 'Shot')
			FlxG.sound.play(Paths.sound('hitsounds/shot'));

		if (ClientPrefs.data.hitsoundType == 'Snare')
			FlxG.sound.play(Paths.sound('hitsounds/snare'));

		if (ClientPrefs.data.hitsoundType == 'Switch')
			FlxG.sound.play(Paths.sound('hitsounds/switch'));

		if (ClientPrefs.data.hitsoundType == 'Wood')
			FlxG.sound.play(Paths.sound('hitsounds/wood'));
	}
}