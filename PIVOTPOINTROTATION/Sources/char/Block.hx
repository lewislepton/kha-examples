package char;

import kha.Framebuffer;
import kha.Color;
import kha.math.FastMatrix3;
import kha.Key;

class Block {
	public var x:Int;
	public var y:Int;
	public var angle:Float;
	public var angleSpeed = 0.06;
	public var speed = 6.0;
	
	public var up = false;
	public var down = false;
	public var left = false;
	public var right = false;
	
	public function new(x:Int, y:Int){
		this.x = x;
		this.y = y;
	}
	
	public function update(){
		angle += angleSpeed;
		
		if (left){
			this.x -= Math.round(speed);
		} else if (right){
			this.x += Math.round(speed);
		}
		
		if (up){
			this.y -= Math.round(speed);
		} else if (down){
			this.y += Math.round(speed);
		}
	}
	
	public function render(framebuffer:Framebuffer){
		var graphics = framebuffer.g2;
		graphics.begin();
		graphics.pushTransformation;
		graphics.transformation = FastMatrix3.translation(-1, -1);
		graphics.rotate(angle, x, y);
		graphics.fillRect(x - 16, y - 16, 32, 32);
		graphics.transformation = FastMatrix3.translation(1, 1);
		graphics.popTransformation();
		graphics.end();
	}
	
	public function onKeyDown(key:Key, value:String):Void {
		switch (key){
			case LEFT: left = true;
			case RIGHT: right = true;
			case UP: up = true;
			case DOWN: down = true;
			default: return;
		}
	}
	
	public function onKeyUp(key:Key, value:String):Void {
		switch (key){
			case LEFT: left = false;
			case RIGHT: right = false;
			case UP: up = false;
			case DOWN: down = false;
			default: return;
		}
	}
}