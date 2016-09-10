///MANY THANKS TO RafaelOliveira & dmitryhryppa FOR POINTING OUT THAT I FORGOT && ;)

package;

import kha.Framebuffer;
import kha.input.Mouse;
import kha.Color;

import ui.Button;

class Project {
	public var uiButton01:Button;
	public var uiButton02:Button;
	public var uiButton03:Button;
	
	public function new() {
		uiButton01 = new Button(120, 64, 128, 32, Color.Red);
		uiButton02 = new Button(256, 128, 32, 128, Color.Green);
		uiButton03 = new Button(350, 256, 32, 64, Color.Blue);
		
		Mouse.get().notify(onMouseDown, null, null, null);
	}

	public function update():Void {}

	public function render(framebuffer: Framebuffer):Void {
		var graphics = framebuffer.g2;
		graphics.begin();
		uiButton01.render(graphics);
		uiButton02.render(graphics);
		uiButton03.render(graphics);
		graphics.end();
	}
	
	public function onMouseDown(button:Int, x:Int, y:Int){
		uiButton01.onMouseDown(button, x, y);
		uiButton02.onMouseDown(button, x, y);
		uiButton03.onMouseDown(button, x, y);
	}
}
