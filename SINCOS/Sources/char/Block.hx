package char;

import kha.Framebuffer;
import kha.Color;

class Block {
	public var x:Float;
	public var y:Float;
	
	public function new(x:Float, y:Float){
		this.x = x;
		this.y = y;
	}
	
	public function update(){
		this.x += Math.sin(7.2);
		this.y -= Math.cos(2.9);
	}
	
	public function render(framebuffer:Framebuffer){
		var graphics = framebuffer.g2;
		graphics.begin();
		graphics.color = Color.Red;
		graphics.fillRect(x, y, 64, 64);
		graphics.end();
	}
}