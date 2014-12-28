package playground.src.shapes 
{
	import flash.display.Sprite;
	
	public class SimpleStar extends Sprite
	{
		private var star:Sprite;
		
		private var _color:Number;
		private var _x:Number;
		private var _y:Number;
		private var _size:Number;
		private var _opacity:Number;
		private var pointsArray:Array;
		
		public function SimpleStar(xPos:Number,yPos:Number,size:Number,color:Number=0x4D7B99,opacity:Number=1) 
		{
			
			_color = color;
			_x = xPos;
			_y = yPos;
			_size = size;
			_opacity = opacity;
			
			makePoints();
			
			drawStar();
		}
		
		private function makePoints():void
		{
			pointsArray = new Array();
			pointsArray.push(_x);
			pointsArray.push(_y);
			pointsArray.push(_x+_size);
			pointsArray.push(_y+_size);
			pointsArray.push(_y-_size);
			pointsArray.push(_y-_size);
		}
		
		private function drawStar():void
		{
			star = new Sprite();
			star.graphics.beginFill(_color, _opacity);
			star.graphics.moveTo(pointsArray[i], pointsArray[i + 1]);
			
			for (var i = 0; i < pointsArray.length;i++){
				star.graphics.lineTo(pointsArray[i+2],pointsArray[i+3]);
			}
			star.graphics.endFill();
			
			addChild(star);
		}
		
		public function changeColor(color:Number,opacity:Number=1):void {
			
			star.graphics.clear();
			_color = color;
			_opacity = opacity;
			drawStar();
			
		}
		
		public function clear():void {
			star.graphics.clear();
		}
		
	}

}