package;

/*
ALL THANKS GO TO 'DMITRY HRYPPA' SINCE HE WAS THE ONE THAT MADE THIS & PUT IT ON PASTEBIT. IVE JUST MADE IT SIMPLER. GIVIN THE CHAR ITS OWN CLASS FILE, SAME WITH THE PROJECT CLASS FILE. ITS PURELY TO BREAK IT UP A BIT
TWITTER - @dmitryhryppa
ORIGINAL PASTEBIN POST - http://pastebin.com/b7rktVJ5
*/

import kha.Assets;
import kha.Framebuffer;
import kha.Image;
import kha.input.Mouse;
import kha.Scheduler;
import kha.System;
import nape.geom.AABB;
import nape.geom.Vec2;
import nape.phys.Body;
import nape.phys.BodyType;
import nape.shape.Polygon;
import nape.space.Space;

import Char;

class Project {
	public var space:Space;
  public var arChars:Array<Char>;
		
	public function new() {
		space = new Space(new Vec2(0,600));
		arChars = new Array<Char>();
		
		setupRoom();
		
		Mouse.get().notify(onMouseDown, null, null, null);
	}
	
	public function setupRoom():Void {
		var floorBody:Body = new Body(BodyType.STATIC);
    var floorBody2:Body = new Body(BodyType.STATIC);
    var floorBody3:Body = new Body(BodyType.STATIC);
    var floorShape:Polygon = new Polygon(Polygon.rect(0,550,800, 1));
    var floorShape2:Polygon = new Polygon(Polygon.rect(800,600,1,600));
    var floorShape3:Polygon = new Polygon(Polygon.rect(-800,600,1,600));
    floorShape.body = floorBody;
    floorBody.shapes.add(floorShape);
    floorBody2.shapes.add(floorShape2);
    floorBody3.shapes.add(floorShape3);
    floorBody.space = space;
    floorBody2.space = space;
    floorBody3.space = space;
	}

	public function update():Void {
		space.step(1 / 60);
	}

	public function render(framebuffer:Framebuffer):Void {
		var graphics = framebuffer.g2;
		var pos:Vec2;
		graphics.begin();
    for (i in 0 ... arChars.length) {
			pos = arChars[i].body.position;
			graphics.pushRotation(arChars[i].body.rotation, pos.x+50, pos.y+50);
			graphics.drawImage(arChars[i].image, arChars[i].body.position.x, arChars[i].body.position.y);
			graphics.popTransformation();
		}
    graphics.end();
	}
	
	public function onMouseDown(button:Int, x:Int, y:Int):Void {
		var char:Char = new Char(space); 
		char.body.position = new Vec2(x, y);
		arChars.push(char);
		trace(arChars.length);
	}
}