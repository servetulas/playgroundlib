package playground.src.shapes 
{
	import flash.display.Sprite;
	
	public class SimpleRoundedRectangle extends Sprite
	{
		private var rect:Sprite;
		
		private var _color:Number;
		private var _x:Number;
		private var _y:Number;
		private var _width:Number;
		private var _height:Number;
		private var _opacity:Number;
		private var _corner:Number;
		
		public function SimpleRoundedRectangle(xPos:Number,yPos:Number,width:Number,height:Number,corner:Number=2,color:Number=0x4D7B99,opacity:Number=1) 
		{
			
			_color = color;
			_x = xPos;
			_y = yPos;
			_width = width;
			_height = height;
			_corner = corner;
			_opacity = opacity;
			
			drawRoundedRectangle();
		}
		
		private function drawRoundedRectangle():void
		{
			rect = new Sprite();
			rect.graphics.beginFill(_color,_opacity);
			rect.graphics.drawRoundRect(_x, _y, _width, _height, _corner, _corner);
			rect.graphics.endFill();
			addChild(rect);
		}
		
		public function changeColor(color:Number,opacity:Number=1):void {
			
			rect.graphics.clear();
			_color = color;
			_opacity = opacity;
			drawRoundedRectangle();
			
		}
		
		public function clear():void {
			rect.graphics.clear();
		}
		
	}

}