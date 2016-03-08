package;

import kha.Framebuffer;
import kha.Scaler;
import kha.System;
import kha.Image;

import Char;

class Project {
	public var backbuffer:Image;
	public var char:Char;
	
	public function new() {
		///CHANGE THE ARGUMENTS IN THE CREATE RENDER TARGET
		backbuffer = Image.createRenderTarget(800, 600);
		
		char = new Char(128, 128);
	}

	public function update():Void {
		
	}

	public function render(framebuffer:Framebuffer):Void {
		var graphics = backbuffer.g2;
		graphics.begin();
		char.render(graphics);
		graphics.end();
		
		framebuffer.g2.begin();
		Scaler.scale(backbuffer, framebuffer, System.screenRotation);
		framebuffer.g2.end();
	}
}
