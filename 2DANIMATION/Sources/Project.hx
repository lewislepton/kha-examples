package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;

import kha2d.Scene;

import char.Char;

class Project {
	public var char:Char;
	
	public function new() {
		Assets.loadEverything(loadAll);
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}
	
	public function loadAll():Void {
		char = new Char();
		///WE USE SCENE TO ADD INTO THE... WELL... SCENE
		Scene.the.addHero(char);
	}

	public function update():Void {
		///ALSO UPDATING
		Scene.the.update();
	}

	public function render(framebuffer:Framebuffer):Void {		
		var graphics = framebuffer.g2;
		graphics.begin();
		///AND LASTLY FOR RENDERING
		Scene.the.render(graphics);
		graphics.end();		
	}
}
