package;

import kha.input.Mouse;

class Project {
	public var boolItem = false;
	
	public function new() {
		Mouse.get().notify(onMouseDown, onMouseUp, null, null);
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
}
