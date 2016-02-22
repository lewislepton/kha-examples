package ui;

import kha.graphics2.Graphics;
import kha.Color;

class Button {
	public var x:Int;
	public var y:Int;
	public var width:Int;
	public var height:Int;
	public var color:Color;
	
	public function new(x:Int, y:Int, width:Int, height:Int, color:Color){
		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
		this.color = color;
	}
	
	public function render(graphics:Graphics){
		graphics.color = color;
		graphics.fillRect(x, y, width, height);
	}
	
	public function onMouseDown(mouseButton:Int, mouseX:Int, mouseY:Int){
		if (mouseButton == 0){
			if (mouseX >= this.x && mouseX <= this.x + this.width && mouseX >= this.y && mouseY <= this.y + this.height) {
				trace('CLICKED THE BUTTON');
			}
		}
	}
}