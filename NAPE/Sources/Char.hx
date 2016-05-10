package;

import kha.Assets;
import kha.Image;

import nape.phys.Body;
import nape.phys.BodyType;
import nape.geom.Vec2;
import nape.shape.Polygon;
import nape.space.Space;

class Char {
	public var body:Body;
	public var image:Image;
	public function new(space:Space){
		image = Assets.images.crate;
		body = new Body();
		body.space = space;
    body.shapes.add(new Polygon(Polygon.box(96, 96)));
		body.mass = 10;
	}
}