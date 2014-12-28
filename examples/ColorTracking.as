package examples 
{
	import flash.display.Sprite;
	import playground.src.video.ColorTracker;
	import playground.src.video.LiveCamera;
	
	public class ColorTracking extends Sprite
	{
		
		private var _cam:ColorTracker;
		
		public function ColorTracking() 
		{
			_cam = new ColorTracker(320, 240, 0x44ddff, 10);
			addChild(_cam);
			trace(_cam.publicpos);
			
		}
		
	}

}