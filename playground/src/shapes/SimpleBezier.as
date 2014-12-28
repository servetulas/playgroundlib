package playground.src.shapes 
{
	import flash.display.Sprite;
	
	public class SimpleBezier extends Sprite
	{
		
		private var _curve:Sprite;
		private var _x:Number;
		private var _y:Number;
		private var _tx:Number;
		private var _ty:Number;
		private var _attx:Number;
		private var _atty:Number;
		private var _thickness:Number;
		private var _color:Number;
		private var _alpha:Number;
		
		public function SimpleBezier(startX:int, startY:int, attractorX:int, attractorY:int,
									 targetX:int, targetY:int, linecolor:Number = 0xff44ff, 
									 linethickness:Number = 1, transparency:Number = 1)
		{
			_x = startX;
			_y = startY;
			_tx = targetX;
			_ty = targetY;
			_attx = attractorX;
			_atty = attractorY;
			_thickness = linethickness;
			_color = linecolor;
			_alpha = transparency;
			
			drawCurve();
			
		}
		
		private function drawCurve():void
		{
			_curve = new Sprite();
			_curve.graphics.lineStyle(_thickness, _color, _alpha);
			_curve.graphics.moveTo(_x, _y);
			_curve.graphics.curveTo(_attx, _atty, _tx, _ty);
			addChild(_curve);
		}
		
	}

}