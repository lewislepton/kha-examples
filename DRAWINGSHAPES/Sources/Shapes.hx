package;

///we just import Framebuffer & Color. we use Framebuffer to make sure we are 
import kha.Framebuffer;
import kha.Color;
///we will be using the FastMatrix for positioning in the middle-ish of the screen
import kha.math.FastMatrix3;

class Shapes {
	///we dont need anything in 'new' since all we are really doing is rendering right away. we could make the task bigger by making some variables. but this is a basic thing ;)
	///we NEED the constructor. so anytime, we NEED 'new', even if nothing  is in it
	public function new(){}

	///render is where all the fun happens. and if you look back at Main.hx, you will notice it calls for render
	public function render(framebuffer:Framebuffer): Void {
	///we setup a variable called 'graphics', because thats what we are buffering to. making sure we set it to the Framebuffer, using g2 graphics. we can use other graphics. but for this, keep it simple learning ;)
	var graphics = framebuffer.g2;
	///like openGL, we NEED to do a begin() for graphics. its like whatever is between begin() & end(), that is what renders. if we take away the .begin() & end(), you will se it flicker. its not properly render
    graphics.begin();
    ///we now set the color to the graphics
    graphics.color = Color.Magenta;
    ///here we are drawing a rect shape. which essentially filles it with the above color
    graphics.fillRect(300, 200, 128, 64);
    ///this is now a 'new' color, for a new shape
    graphics.color = Color.Cyan;
    ///here we draw a triangle
    graphics.fillTriangle(50, 150, 150, 50, 300, 150);

    graphics.color = Color.Yellow;
    ///here we draw a line, with the last argument being thickness
    graphics.drawLine(100, 250, 400, 200, 7.0);
    ///and we .end() it off. stopping the graphics
    graphics.end();
  }
	// public function update():Void {}
}