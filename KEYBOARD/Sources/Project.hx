package;

import kha.input.Keyboard;
import kha.Key;

class Project {
	public var leftKey:Bool;
	public var rightKey:Bool;
	public var upKey:Bool;
	public var downKey:Bool;
	
	public function new() {
		Keyboard.get().notify(onKeyDown, onKeyUp);
	}
	
	public function onKeyDown(key:Key, value:String):Void {
		trace('THIS IS THE KEY GOING DOWN');
		
		switch (key){
			case CHAR:
			if (value == 'e'){
				trace('this is E key');
			}
			if (value == 'a'){
				trace('this is A key');
			}
			if (value == ' '){
				trace('this is SPACE key');
			}
			if (value == '1'){
				trace('this is 1 key');
			}
			
			case LEFT: leftKey = true;
			case RIGHT: rightKey = true;
			case UP: leftKey = true;
			case DOWN: rightKey = true;
			
			default: return;
		}
	}
	
	public function onKeyUp(key:Key, value:String):Void {
		trace('THIS IS THE KEY GOING UP');
		
		switch (key){
			case LEFT: leftKey = false;
			case RIGHT: rightKey = false;
			case UP: leftKey = false;
			case DOWN: rightKey = false;
			
			default: return;
		}
	}
}
