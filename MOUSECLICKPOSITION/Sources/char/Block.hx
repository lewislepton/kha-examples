package char;

import kha.Framebuffer;
import kha.Color;

class Block {
	public var x:Int;
	public var y:Int;
	
	public function new(x:Int, y:Int){
		this.x = x;
		this.y = y;
	}
	
	public function render(framebuffer:Framebuffer){
		var graphics = framebuffer.g2;
		graphics.begin();
		graphics.color = Color.Magenta;
		graphics.fillRect(x, y, 64, 64);
		graphics.end();
	}
}