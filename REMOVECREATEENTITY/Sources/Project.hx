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
		block = new Block(256, 256);
		Mouse.get().notify(onMouseDown, null, null, null);
	}

	function update():Void {
		block.update();
	}

	function render(framebuffer: Framebuffer):Void {
		var graphics = framebuffer.g2;
		graphics.begin();
		block.render(framebuffer);
		graphics.end();		
	}
	
	public function onMouseDown(button:Int, x:Int, y:Int):Void {
		if (button == 0){
			trace('deleted that damned block. thats right "block", if that is your real name?. youre not having any more scones or tea');
			block.isActive = false;
		}
		
		if (button == 1){
			trace('OH, so, youre back?. you can stay. but really, you cant have any more scones. tea is ok. so drink up');
			block.isActive = true;
		}
	}
}
