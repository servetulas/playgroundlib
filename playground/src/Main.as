package playground.src 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import playground.src.loop.Loop;
	import playground.src.shapes.SimpleBezier;
	import playground.src.shapes.SimpleCircle;
	import playground.src.shapes.SimpleRectangle;
	import playground.src.shapes.SimpleRoundedRectangle;
	import playground.src.shapes.SimpleStar;
	import playground.src.sound.LiveSound;
	import playground.src.systems.GridMaker;
	import playground.src.typography.TypeBox;
	import playground.src.video.LiveCamera;
	
	public class Main extends Sprite
	{	
		
		private var _attx:Number;
		private var _atty:Number;
		private var mic:LiveSound;
		private var rect:SimpleRectangle;
		
		public function Main() 
		{
			var tb:TypeBox = new TypeBox(20, 20, 400, 200);
			addChild(tb);
		}
		
	
		private function drawCurves():void
		{		
			
			for (var i = 0; i < 40; i++) {
				for (var j = 0; j < 40; j++) {
					_attx=Math.random() * 450;
					_atty = Math.random() * 450;
					
					var curve:SimpleBezier = new SimpleBezier(225, 225,  _attx,_atty,
					 Math.random() * 450, Math.random() * 450, 0x222222, 1, .2);
					addChild(curve);
				}
			}
		}
		
	}

}