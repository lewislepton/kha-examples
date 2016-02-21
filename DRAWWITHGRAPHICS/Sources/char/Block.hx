package char;

import kha.graphics2.Graphics;
import kha.Color;

class Block {
	public var x:Int;
	public var y:Int;
	
	public function new(x:Int, y:Int){
		this.x = x;
		this.y = y;
	}
	
	public function render(graphics:Graphics){
		graphics.color = Color.Pink;
		graphics.fillRect(x, y, 64, 64);
	}
}