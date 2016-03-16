package;

import kha.Image;
import kha.Assets;

import nape.phys.Body;
import nape.phys.BodyType;
import nape.shape.Polygon;
import nape.space.Space;

class Block {
	public var body:Body;
	public var image:Image;
	
	public function new(space:Space){
		image = Assets.images.block;
		body = new Body();
		body.space = space;
		body.shapes.add(new Polygon(Polygon.box(64,64)));
	}
}