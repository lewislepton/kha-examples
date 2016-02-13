///MANY THANKS GO TO ROBERT & EXIT_HEAD FOR POINTING OUT SOME THINGS. PLUS OUR CHAT MATH & WINDOW PLACEMENT ;)

package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Color;
import kha.FastFloat;
import kha.math.FastMatrix3;

class Project {
	///THIS DOES THE WIDTH/HEIGHT OF THE WINDOW PROPERLY USING `System.pixelWidth/pixelHeight, RATHER THAN SAY PUTTING: 1028/768 FOR WIDTH/HEIGHT
	public var WIDTH = System.pixelWidth;
	public var HEIGHT = System.pixelHeight;
	
	public var rotation = 0.0;
	public var rotateBy = 0.1;
	
	public function new() {
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}

	function update():Void {
		///ROTATE CLOCKWISE
		rotation += rotateBy;
		
		///ROTATE COUNTER CLOCKWISE
		// rotation -= rotateBy;   <-- UNCOMMENT
	}

	function render(framebuffer: Framebuffer):Void {			
		var graphics = framebuffer.g2;
		graphics.begin();
		graphics.color = Color.Red;
		graphics.transformation = FastMatrix3.translation(WIDTH / 2, HEIGHT / 2);
		///WE NEED FASTFLOAT JUST IMPORTED TO USE PROPERLY. NO INTENTIONAL ARGUMENTS SUCH AS `FastFloat.blahBlah`
		graphics.rotate(rotation, WIDTH / 2, HEIGHT / 2);
		graphics.fillRect(0, 0, 64, 64);
		graphics.end();
	}
}
