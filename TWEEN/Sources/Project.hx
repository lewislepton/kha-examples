///HERE IS THE SITE FOR MORE INFO ON TWEENX
///http://tweenx.spheresofa.net/en.html

package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;

import char.Block;

import tweenx909.TweenX;
import tweenx909.EaseX;

class Project {
	public var block:Block;
	
	public function new() {
		Assets.loadEverything(loadAll);
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}
	
	public function loadAll(){
		block = new Block(640, 480);
		
		TweenX.to(block, {x:20, y:150}).time(3.0).ease(EaseX.elasticInOut);
	}

	function update():Void {
		
	}

	function render(framebuffer:Framebuffer):Void {
		var graphics = framebuffer.g2;
		graphics.begin();
		block.render(framebuffer);
		graphics.end();
	}
}
