package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
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
				Audio.play(Assets.sounds.loop01, false, false);
				
				///LOOPED
				// Audio.play(Assets.sounds.loop01, true, false);
			}
			if (value == '2'){
				Audio.play(Assets.sounds.loop02, false, false);
			}
			if (value == '3'){
				Audio.play(Assets.sounds.loop03, false, false);
			}
			default: return;
		}
	}
	
	public function onKeyUp(key:Key, value:String):Void {
		switch (key){
			case CHAR:
			if (value == '1'){
				trace('loop 01');
			}
			if (value == '2'){
				trace('loop 02');
			}
			if (value == '3'){
				trace('loop 03');
			}
			default: return;
		}
	}
}
