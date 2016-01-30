package;

import kha.Assets;
import kha.audio1.Audio;
import kha.audio1.AudioChannel;
import kha.Sound;
import kha.Key;
import kha.input.Keyboard;

class Project {
	public var sound:Sound;
	public var channel:AudioChannel;
	public function new() {
		Assets.loadEverything(loadAll);
	}
	
	public function loadAll():Void {
		Keyboard.get().notify(onKeyDown, onKeyUp);
	}
	
	public function onKeyDown(key:Key, value:String):Void {
		switch (key){
			case CHAR:
			if (value == '1'){
				///NOT LOOPED
				Audio.play(Assets.sounds.sound01, false, false);
				
				///LOOPED
				// Audio.play(Assets.sounds.sound01, true, false);
			}
			if (value == '2'){
				Audio.play(Assets.sounds.sound02, false, false);
			}
			if (value == '3'){
				Audio.play(Assets.sounds.sound03, false, false);
			}
			default: return;
		}
	}
	
	public function onKeyUp(key:Key, value:String):Void {
		switch (key){
			case CHAR:
			if (value == '1'){
				trace('sound 01');
			}
			if (value == '2'){
				trace('sound 02');
			}
			if (value == '3'){
				trace('sound 03');
			}
			default: return;
		}
	}
}
