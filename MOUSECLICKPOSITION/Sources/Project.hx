package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;
import kha.input.Mouse;

import char.Block;

class Project {
	public var block:Block;
	
	public function new() {
		Assets.loadEverything(loadAll);
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}
	
	public function loadAll(){
		block = new Block(256, 180);
		Mouse.get().notify(onMouseDown, null, null, null);
	}

	function update(): Void {
		
	}

	function render(framebuffer: Framebuffer): Void {
		var graphics = framebuffer.g2;
		graphics.begin();
		block.render(framebuffer);
		graphics.end();
	}
	
	public function onMouseDown(button:Int, x:Int, y:Int){
		if (button == 0){
			block.x = x;
			block.y = y;
		}
	}
}
