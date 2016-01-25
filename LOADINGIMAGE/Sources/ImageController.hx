package;

//import kha.graphics2.Graphics;
import kha.Framebuffer;
import kha.Image;
import kha.Assets;
import kha.System;

class ImageController {
	public var image:Image;
	public function new(){
		System.notifyOnRender(render);
		Assets.loadEverything(loadAll);
	}
	
	private function loadAll():Void {
		image = Assets.images.LewisPixelComputer;
	}
	
	public function render(framebuffer:Framebuffer){
		var graphics = framebuffer.g2;
		graphics.begin();
		graphics.drawImage(image, 32, 32);
		graphics.end();
	}
}