/**********************************************************************************
 * Demonstrates how to use Loop object(s). Ideally you would only have one of 
 * this created like a singleton. best approach would be to make this class a
 * public static one but that would just be confusing for some
 * Servet Ulas - 2010
 * *******************************************************************************/

package examples 
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import playground.src.loop.Loop;
	import playground.src.shapes.SimpleRectangle;

	public class LoopExample extends Sprite
	{
		private var _box:SimpleRectangle;
		private var _loop:Loop;
		private var _alive:Boolean;
		
		public function LoopExample() 
		{
			init();	
		}//end of constructor
		
		private function init():void
		{
			_alive = false;
			//create the SimpleRectangle instance
			_box = new SimpleRectangle(0, 0, 40, 40);
			_box.x = stage.stageWidth * .5;
			_box.y = stage.stageHeight * .5;
			addChild(_box);
			//add an eventListener to track clicks
			_box.addEventListener(MouseEvent.CLICK, onClick);
			//create the Loop instance
			_loop = new Loop();
			addChild(_loop);
		}
		
		private function onClick(e:MouseEvent):void
		{	
			//if it's already rotating, make it stop
			if (_alive) {
				//remove the function from the loop
				_loop.removeTask("rotateBoxID");
				_alive = false;
			//else, make it rotate
			}else {
				//add the function to the loop
				_loop.addTask(rotateBox, "rotateBoxID");	
				_alive = true;
			}
		}
		
		private function rotateBox():void {
			//rotation increment every frame
			_box.rotation++;
		}
		
	}//end of class

}//end of package