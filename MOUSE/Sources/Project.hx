package;

import kha.input.Mouse;

class Project {
	public var boolItem = false;
	
	public function new() {
		Mouse.get().notify(onMouseDown, onMouseUp, onMouseMove, null);
	}
	
	public function onMouseDown(button:Int, x:Int, y:Int):Void {
		trace('mouse button DOWN');
		
		if (button == 0){
			trace('LEFT mouse button down');
		}
		if (button == 1){
			trace('RIGHT mouse button down');
		}
		
		boolItem = true;
	}
	
	public function onMouseUp(button:Int, x:Int, y:Int):Void {
		trace('mouse button UP');
		
		if (button == 0){
			trace('LEFT mouse button up');
		}
		if (button == 1){
			trace('RIGHT mouse button up');
		}
		
		boolItem = false;
	}
	
	public function onMouseMove(x:Int, y:Int, cx:Int, cy:Int):Void {
		if (x > 0){
			trace('x pos ' + x);
		}
		if (y > 0){
			trace('y pos ' + y);
		}
		
		if (cx > 0){
			trace('Xing ' + cx);
		}
		if (cy > 0){
			trace('Ying ' + cy);
		}
	}
}
