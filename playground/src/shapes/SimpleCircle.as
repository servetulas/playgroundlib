package playground.src.shapes 
{
	import flash.display.Sprite;
	
	public class SimpleCircle extends Sprite
	{
		private var circle:Sprite;
		
		private var _color:Number;
		private var _x:Number;
		private var _y:Number;
		private var _radius:Number;
		private var _opacity:Number;
		
		public function SimpleCircle(xPos:Number,yPos:Number,radius:Number,color:Number=0x4D7B99,opacity:Number=1) 
		{
			
			_color = color;
			_x = xPos;
			_y = yPos;
			_radius = radius;
			_opacity = opacity;
			
			drawCircle();
		}
		
		private function drawCircle():void
		{
			circle = new Sprite();
			circle.graphics.beginFill(_color,_opacity);
			circle.graphics.drawCircle(_x, _y, _radius);
			circle.graphics.endFill();
			addChild(circle);
		}
		
		public function changeColor(color:Number,opacity:Number=1):void {
			
			circle.graphics.clear();
			_color = color;
			_opacity = opacity;
			drawCircle();
			
		}
		
		public function clear():void {
			circle.graphics.clear();
		}
		
	}

}