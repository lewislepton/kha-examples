//////
/*
** SUPER SIMPLE SHAPE DRAWING IN KHA
** @author: lewis lepton
*/
//////
package;

///we only need kha.System imported. since we use 'notify' & notifyOnRender
import kha.System;
import kha.Scheduler;

class Main {
	public static function main() {
		///this is a screen setup. our screen title, width, height and getting the 'Shapes' class in.
		System.init("Shapes", 1024, 768, function() {
			var shapes = new Shapes();
			///we also put in a renderer which talks to our 'Shapes' class render function
			System.notifyOnRender(shapes.render);
		});
	}
}
