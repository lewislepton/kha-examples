package;

import kha.graphics2.Graphics;
import kha.Image;
import kha.Assets;
import kha.Color;

class Char {
	public var x:Int;
	public var y:Int;
	public var width:Int;
	public var height:Int;
	
	public function new(x:Int, y:Int, width:Int, height:Int){
		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
	}

	public function render(graphics:Graphics){
		graphics.fillRect(x, y, width, height);
	}
}