/**********************************************************************************
 * Demonstrates how to use the basic shapes in the "shapes" classes
 * Servet Ulas - 2010
 * *******************************************************************************/

package examples 
{
	import flash.display.Sprite;
	import playground.src.shapes.SimpleCircle;
	import playground.src.shapes.SimpleRectangle;
	import playground.src.shapes.SimpleRoundedRectangle;
	
	public class Shapes extends Sprite
	{
		private var _rect:SimpleRectangle;
		private var _roundedrect:SimpleRoundedRectangle;
		private var _circle:SimpleCircle;
		
		public function Shapes() 
		{	
			//SimpleRectangle(x position, y position, width, height, color, alpha)
			_rect = new SimpleRectangle(40, 120, 200, 80,0x4D7B99,.8);
			addChild(_rect);
			//SimpleRoundedRectangle(x position, y position, width, height, corner radius, color, alpha)
			_roundedrect = new SimpleRoundedRectangle(40, 210, 260, 40, 8, 0x4D7B99, .6);
			addChild(_roundedrect);
			//SimpleCircle(x position, y position, radius, color, alpha)
			_circle = new SimpleCircle(260, 180, 16, 0X4D7B99, .4);
			addChild(_circle);
		}//end of constructor
		
	}//end of class

}//end of package