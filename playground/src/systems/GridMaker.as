package playground.src.systems 
{
	import flash.display.Sprite;
	import playground.src.shapes.SimpleCircle;
	import playground.src.shapes.SimpleRectangle;
	import playground.src.shapes.SimpleRoundedRectangle;
	
	public class GridMaker extends Sprite
	{
		
		private var _grid:Sprite;
		
		private var _rows:int;
		private var _columns:int;
		private var _unit:Sprite;
		private var _width:int;
		private var _height:int;
		private var _color:Number;
		private var _x:int;
		private var _y:int;
		private var _padding:int;
		
		public function GridMaker(rows:int,columns:int,width:int,height:int,padding:int,color:Number) 
		{
			_rows = rows;
			_columns = columns;
			_padding = padding;
			
			_color = color;
			_width = width;
			_height = height;

			
		}
	
		
		public function drawGridFromRectangles():void {
			
			for (var i = 0; i < _rows; i++) {
				for (var j = 0; j < _columns; j++) {
					var rect:SimpleRectangle = new SimpleRectangle(0,0, _width, _height, _color);
					rect.x =i*(_width+_padding);
					rect.y =j*(_height+_padding);
					addChild(rect);
				}
			}
			
		}
		
		public function drawGridFromRoundedRectangles(corner:int=4):void {
			
			for (var i = 0; i < _rows; i++) {
				for (var j = 0; j < _columns; j++) {
					var rect:SimpleRoundedRectangle = new SimpleRoundedRectangle(0,0, _width,_height,corner, _color);
					rect.x =i*(_width+_padding);
					rect.y =j*(_height+_padding);
					addChild(rect);
				}
			}
			
		}
		
		public function drawGridFromCircles(radius:Number):void {
			
			for (var i = 0; i < _rows; i++) {
				for (var j = 0; j < _columns; j++) {
					var circle:SimpleCircle = new SimpleCircle(0,0, radius, _color);
					circle.x =i*(radius*2+_padding);
					circle.y =j*(radius*2+_padding);
					addChild(circle);
				}
			}
			
		}
		
		
		
		
	}

}