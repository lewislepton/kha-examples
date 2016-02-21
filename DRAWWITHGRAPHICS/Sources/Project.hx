package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;

import char.Block;

class Project {
	public var block:Block;
	
	public function new() {
		Assets.loadEverything(loadAll);
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}
	
	public function loadAll(){
		block = new Block(256, 128);
	}

	function update(): Void {
		
	}

	function render(framebuffer: Framebuffer): Void {
		var graphics = framebuffer.g2;
		graphics.begin();
		block.render(graphics);
		graphics.end();
	}
}
