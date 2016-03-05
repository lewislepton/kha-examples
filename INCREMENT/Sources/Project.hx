package;

import kha.Framebuffer;
import kha.Key;
import kha.input.Keyboard;
import kha.Image;
import kha.Assets;

import Char;

class Project {
	public var char01:Char;
	public var char02:Char;
	public var char03:Char;
	
	public function new() {
		char01 = new Char(32, 32, 64, 64);
		char02 = new Char(32, 256, 64, 64);
		char03 = new Char(400, 512, 64, 64);
		
		Keyboard.get().notify(onKeyDown, null);
	}

	public function update():Void {
		char01.width += 1;
		if (char01.width > 750){
			char01.width = 64;
		}
	}

	public function render(framebuffer:Framebuffer):Void {
		var graphics = framebuffer.g2;
		graphics.begin();
		char01.render(graphics);
		char02.render(graphics);
		char03.render(graphics);
		graphics.end();
	}
	
	public function onKeyDown(key:Key, value:String){
		switch (key){
			case CHAR:
				if (value == ' '){
					char02.width += 10;
				}
				if (value == 'a'){
					char03.width -= 10;
				} else if (value == 'd'){
					char03.width += 10;
				}
		default: return;
		}
	}
}
