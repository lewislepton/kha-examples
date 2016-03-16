package;

import kha.Framebuffer;
import kha.Key;
import kha.input.Keyboard;

import nape.geom.AABB;
import nape.geom.Vec2;
import nape.phys.Body;
import nape.phys.BodyType;
import nape.shape.Polygon;
import nape.space.Space;

import Block;

class Project {
	public var space:Space;
	public var block:Block;
	
	public var left:Bool;
	public var right:Bool;
	public var up:Bool;

	public function new() {
		space = new Space(new Vec2(0, 325));
		block = new Block(space);
		
		setupFloor();
		
		Keyboard.get().notify(onKeyDown, onKeyUp);
	}
	
	public function setupFloor():Void {
		var floorBody:Body = new Body(BodyType.STATIC);
    var floorShape:Polygon = new Polygon(Polygon.rect(0,550,800, 1));
    floorShape.body = floorBody;
    floorBody.shapes.add(floorShape);
    floorBody.space = space;
	}

	public function update():Void {
		space.step(1 / 60);
		
		if (left){
			block.body.applyImpulse(new Vec2(-30, 0));
		} else if (right){
			block.body.applyImpulse(new Vec2(30, 0));
		}
		
		if (up){
			block.body.applyImpulse(new Vec2(0, -200));
		}
	}

	public function render(framebuffer:Framebuffer):Void {
		var graphics = framebuffer.g2;
		var pos:Vec2;
		
		graphics.begin();
		pos = block.body.position;
		graphics.pushRotation(block.body.rotation, pos.x+100, pos.y+100);
		graphics.drawImage(block.image, block.body.position.x, block.body.position.y);
		graphics.popTransformation();
    graphics.end();
	}
	
	public function onKeyDown(key:Key, value:String):Void {
		switch (key){
			case LEFT: left = true;
			case RIGHT: right = true;
			case CHAR: if (value == ' ') up = true;
		default: return;
		}
	}
	
	public function onKeyUp(key:Key, value:String):Void {
		switch (key){
			case LEFT: left = false;
			case RIGHT: right = false;
			case CHAR: if (value == ' ') up = false;
		default: return;
		}
	}
}
