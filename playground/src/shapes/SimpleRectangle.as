package playground.src.shapes 
{
	import flash.display.Sprite;
	
	public class SimpleRectangle extends Sprite
	{
		private var rect:Sprite;
		
		private var _color:Number;
		private var _x:Number;
		private var _y:Number;
		private var _width:Number;
		private var _height:Number;
		private var _opacity:Number;
		
		public function SimpleRectangle(xPos:Number,yPos:Number,width:Number,height:Number,color:Number=0x4D7B99,opacity:Number=1) 
		{
			
			_color = color;
			_x = xPos;
			_y = yPos;
			_width = width;
			_height = height;
			_opacity = opacity;
			
			drawRectangle();
		}
		
		private function drawRectangle():void
		{
			rect = new Sprite();
			rect.graphics.beginFill(_color,_opacity);
			rect.graphics.drawRect(_x, _y, _width, _height);
			rect.graphics.endFill();
			addChild(rect);
		}
		
		public function changeColor(color:Number,opacity:Number=1):void {
			
			rect.graphics.clear();
			_color = color;
			_opacity = opacity;
			drawRectangle();
			
		}
		
		public function clear():void {
			rect.graphics.clear();
		}
		
	}

}