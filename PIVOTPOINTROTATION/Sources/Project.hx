///THIS WAS THE LINK THAT HELPED IN THE END. IT WAS THE SECOND TO LAST POST THAT WORKED BEST
///https://www.opengl.org/discussion_boards/showthread.php/156456-rotation-at-the-specified-pivot-point

package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;
import kha.input.Keyboard;
import kha.Key;

import char.Block;

class Project {
	public var block:Block;
	
	public function new() {
		Assets.loadEverything(loadAll);
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}
	
	public function loadAll(){
		block = new Block(0, 0);
		Keyboard.get().notify(onKeyDown, onKeyUp);
	}

	public function update():Void {
		block.update();
	}

	public function render(framebuffer: Framebuffer):Void {
		var graphics = framebuffer.g2;
		graphics.begin();
		block.render(framebuffer);
		graphics.end();
	}
	
	public function onKeyDown(key:Key, value:String):Void {
		block.onKeyDown(key, value);
	}
	
	public function onKeyUp(key:Key, value:String):Void {
		block.onKeyUp(key, value);
	}
}
