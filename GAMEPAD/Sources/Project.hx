package;

import kha.input.Gamepad;

class Project {
	public function new() {		
		Gamepad.get().notify(onGamepadAxis, onGamepadButton);
	}
	
	public function onGamepadAxis(axis:Int, value:Float):Void {
		///LEFT ANALOG STICK
		if (axis == 0){
			if (value < -0.1){
				trace('LEFT');
			} else if (value > 0.1){
				trace('RIGHT');
			}
		}
		if (axis == 1){
			if (value < -0.1){
				trace('UP');
			} else if (value > 0.1){
				trace('DOWN');
			}
		}
		
		///RIGHT ANALOG STICK
		if (axis == 2){
			if (value < -0.1){
				trace('LEFT');
			} else if (value > 0.1){
				trace('RIGHT');
			}
		}
		if (axis == 3){
			if (value < -0.1){
				trace('UP');
			} else if (value > 0.1){
				trace('DOWN');
			}
		}
	}
	
	public function onGamepadButton(button:Int, value:Float):Void {
		///ABXY BUTTONS
		if (button == 0){
			trace('A');
		} else if (button == 1){
			trace('B');
		} else if (button == 2){
			trace('X');
		} else if (button == 3){
			trace('Y');
		}
		
		///BUMPER BUTTONS
		if (button == 4){
			trace('LEFT BUMPER');
		} else if (button == 5){
			trace('RIGHT BUMPER');
		}
		
		///TRIGGERS
		if (button == 6){
			trace('LEFT TRIGGER');
		} else if (button == 7){
			trace('RIGHT TRIGGER');
		}
		
		///START/BACK BUTTONS
		if (button == 8){
			trace('BACK BUTTON');
		} else if (button == 9){
			trace('START BUTTON');
		}
		
		///ANALOG BUTTONS
		if (button == 10){
			trace('LEFT ANALOG BUTTON');
		} else if (button == 11){
			trace('RIGHT ANALOG BUTTON');
		}
		
		///DPAD BUTTONS
		if (button == 12){
			trace('DPAD UP');
		} else if (button == 13){
			trace('DPAD DOWN');
		} else if (button == 14){
			trace('DPAD LEFT');
		} else if (button == 15){
			trace('DPAD RIGHT');
		}
		
		///HOME BUTTON
		if (button == 16){
			trace('HOME BUTTON');
		}
	}
}
