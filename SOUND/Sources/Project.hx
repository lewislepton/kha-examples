package;

import kha.Assets;
import kha.audio1.Audio;
import kha.audio1.AudioChannel;
import kha.Key;
import kha.input.Keyboard;

class Project {
	public var beatSynth:AudioChannel;
	public var tone:AudioChannel;
	
	public function new() {
		Assets.loadEverything(loadAll);
	}
	
	public function loadAll():Void {
		Keyboard.get().notify(onKeyDown, null);
	}
	
	public function onKeyDown(key:Key, value:String):Void {
		switch (key){
			case CHAR:
			if (value == '1'){
				///NOT LOOPED
				beatSynth = Audio.play(Assets.sounds.beatSynth, false, false);
				
				///LOOPED
				// sound01 = Audio.play(Assets.sounds.beatSynth, true, false);
			}
			
			if (value == '2'){
				tone = Audio.play(Assets.sounds.tone, false, false);
			}
			
			if (value == '3'){
				beatSynth.stop();
			}
			
			if (value == '4'){
				tone.stop();
			}
			
			if (value == '5'){
				beatSynth.pause();
			}
			
			if (value == '6'){
				tone.pause();
			}
			default: return;
		}
	}
}
