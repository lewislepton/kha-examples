package char;

import kha.Assets;
import kha.graphics2.Graphics;

import kha2d.Animation;
import kha2d.Sprite;

///WE NEED TO EXTEND THE CLASS TO USE KHA2D SPRITE
class Char extends Sprite {
	///SETUP 3 ANIMATION CYCLES
	public var walkLeft:Animation;
	public var walkRight:Animation;
	public var stand:Animation;
	
	public function new(){
		///WE USE SUPER TO IMPORTING THE IMAGE, MAKING IT EASIER TO PLACE INTO AN ANIMATION. OUR FRAMES ARE 64x64
		super(Assets.images.playerAnimWalk, 64, 64);
		
		///THESE RANGES ARE FOR THE MINFRAME, MAXFRAME & SPEED IN WHICH IT PLAYS. HIGHER THE SPEED NUMBER THE SLOWER IT PLAYS
		walkLeft = Animation.createRange(8, 15, 4);
		walkRight = Animation.createRange(0, 7, 2);
		///WE ALSO DONT NEED A RANGE. WE CAN JUST SET FOR 1 FRAME. SUCH AS FOR STILL IMAGES
		stand = Animation.create(0);
		
		///THEN WE SET WHAT STARTS. CHANGE IT TO walkLeft OR stand;
		setAnimation(walkRight);
	}
	
	override public function update(){
		super.update();
	}
}