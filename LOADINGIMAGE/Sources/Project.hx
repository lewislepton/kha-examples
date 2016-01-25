package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;

import ImageController;

class Project {
	public var myImage:ImageController;
	public function new() {
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
		Assets.loadEverything(loadAll);
	}
	
	private function loadAll(){
		myImage = new ImageController();
	}

	function update(): Void {
		
	}

	function render(framebuffer: Framebuffer): Void {
		var graphics = framebuffer.g2;
		graphics.begin();
		graphics.end(); 	
	}
}
