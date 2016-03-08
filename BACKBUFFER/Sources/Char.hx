import kha.graphics2.Graphics;

class Char {
	public var x:Int;
	public var y:Int;
	public function new(x:Int, y:Int){
		this.x = x;
		this.y = y;
	}
	
	public function update(){
		
	}
	
	public function render(graphics:Graphics){
		graphics.fillRect(x, y, 128, 128);
	}
}