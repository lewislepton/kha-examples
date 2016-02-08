package;

///FONT _ freeware, but for commercial requires donation
///http://www.fontspace.com/nymphont/champagne-and-limousines
///FONT _ and here
///http://www.fontspace.com/cloutierfontes/cf-spaceship

import kha.Framebuffer;
import kha.Scheduler;
import kha.Color;
import kha.System;
import kha.Assets;
import kha.Font;

class Project {
	public var font01:Font;
	public var font02:Font;
	public function new() {
		System.notifyOnRender(render);
		Assets.loadEverything(loadAll);
	}
	
	public function loadAll() {
		font01 = Assets.fonts.champagneLimousines;
		font02 = Assets.fonts.spaceship;
	}

	public function render(framebuffer: Framebuffer): Void {
		var graphic = framebuffer.g2;
		graphic.begin();
		graphic.font = font01;
		graphic.fontSize = 64;
		graphic.color = Color.Blue;
		graphic.drawString('THIS IS SOME KHA TEXT', 128, 512);
		
		graphic.font = font02;
		graphic.fontSize = 38;
		graphic.color = Color.Green;
		graphic.drawString('SOME OTHER TEXT. WOOOO KHA. DO IT', 16, 64);
		graphic.end();
	}
}
