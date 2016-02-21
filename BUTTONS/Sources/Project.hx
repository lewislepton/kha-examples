///MANY THANKS TO RafaelOliveira & dmitryhryppa FOR POINTING OUT THAT I FORGOT && ;)

package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;
import kha.input.Mouse;
import kha.Color;

import ui.Button;

class Project {
	public var uiButton01:Button;
	public var uiButton02:Button;
	public var uiButton03:Button;
	
	public function new() {
		Assets.loadEverything(loadAll);
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}
	
	public function loadAll(){
		uiButton01 = new Button(0, 0, 128, 32, Color.Red);
		uiButton02 = new Button(256, 128, 32, 128, Color.Green);
		uiButton03 = new Button(5, 256, 32, 64, Color.Blue);
		
		Mouse.get().notify(onMouseDown, null, null, null);
	}

	function update():Void {}

	function render(framebuffer: Framebuffer):Void {
		var graphics = framebuffer.g2;
		graphics.begin();
		uiButton01.render(graphics);
		uiButton02.render(graphics);
		uiButton03.render(graphics);
		graphics.end();
	}
	
	public function onMouseDown(button:Int, x:Int, y:Int){
		if (button == 0){
			if (x >= uiButton01.x && x <= uiButton01.x + uiButton01.width && y >= uiButton01.y && y <= uiButton01.y + uiButton01.height) {
				trace('CLICKED THE FIRST');
			}
			
			if (x >= uiButton02.x && x <= uiButton02.x + uiButton02.width && y >= uiButton02.y && y <= uiButton02.y + uiButton02.height) {
				trace('CLICKED THE SECOND');
			}
			
			if (x >= uiButton03.x && x <= uiButton03.x + uiButton03.width && y >= uiButton03.y && y <= uiButton03.y + uiButton03.height) {
				trace('CLICKED THE THIRD');
			}
		}
	}
}
