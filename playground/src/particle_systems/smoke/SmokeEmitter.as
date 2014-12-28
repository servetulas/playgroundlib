package playground.src.particle_systems.smoke
{
	import flash.display.Sprite;
	import playground.src.shapes.SimpleCircle;
	
	public class SmokeEmitter extends Sprite
	{
		private var _particles:Sprite;
		
		public function SmokeEmitter() 
		{
			init();
		}
		
		private function init():void
		{
			_particles = new Sprite();
			addChild(_particles);
		}
		
		private function createSmoke():void 
		{
			var smoke = new Smoke();
			addChild(smoke);
		}
	}

}