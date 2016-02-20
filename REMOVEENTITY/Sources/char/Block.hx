package char;

import kha.Framebuffer;
import kha.System;
import kha.Color;

class Block {
	public var x:Int;
	public var y:Int;
	public var isActive = true;
	
	public function new(x:Int, y:Int){
		this.x = x;
		this.y = y;
		isActive = true;
	}
	
	public function update(){
		if (!isActive) return;
	}
	
	public function render(framebuffer:Framebuffer){
		if (!isActive) return;
		
		var graphics = framebuffer.g2;
		graphics.begin();
		graphics.color = Color.Red;
		graphics.fillRect(x, y, 64, 64);
		graphics.end();
	}
}