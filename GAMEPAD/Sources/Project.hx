package;

///this example was made using an xboxOne controller. should be easy to make for ps3

import kha.input.Gamepad;

class Project {
	public function new() {		
		Gamepad.get().notify(onGamepadAxis, onGamepadButton);
	}
	
	public function onGamepadAxis(axis:Int, value:Float):Void {
		///LEFT ANALOG STICK
		if (axis == 0){
			if (value < -0.5){
				trace('LEFT');
			} else if (value > 0.5){
				trace('RIGHT');
			}
		}
		if (axis == 1){
			if (value > 0.5){
				trace('UP');
			} else if (value < -0.5){
				trace('DOWN');
			}
		}
		
		///RIGHT ANALOG STICK
		if (axis == 3){
			if (value > 0.5){
				trace('LEFT');
			} else if (value < -0.5){
				trace('RIGHT');
			}
		}
		if (axis == 4){
			if (value < -0.5){
				trace('UP');
			} else if (value > 0.5){
				trace('DOWN');
			}
		}
		
		if (axis == 2){
			if (value < -0.5){
				trace('LEFT TRIGGER');
			}
		}
		
		if (axis == 5){
			if (value < -0.5){
				trace('RIGHT TRIGGER');
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
		
		///ANALOG PRESS
		if (button == 6){
			trace('LEFT ANALOG PRESS');
		} else if (button == 7){
				trace('RIGHT ANALOG PRESS');
		}
		
		///START/BACK BUTTONS
		if (button == 8){
			trace('START BUTTON');
		} else if (button == 9){
			trace('BACK BUTTON');
		} else if (button == 10){
			trace('HOME BUTTON');
		}
		
		///DPAD BUTTONS
		if (button == 11){
			trace('DPAD UP');
		} else if (button == 12){
			trace('DPAD DOWN');
		} else if (button == 13){
			trace('DPAD LEFT');
		} else if (button == 14){
			trace('DPAD RIGHT');
		}
		
		///HOME BUTTON
		if (button == 15){
			trace('euhenuihe');
		} else if (button == 16){
			trace('sueitehuinteu');
		} else if (button == 17){
			trace('euineunitue');
		}
	}
}
