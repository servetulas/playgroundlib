package playground.src.particle_systems.smoke 
{
	import flash.display.Sprite;
	import playground.src.shapes.SimpleCircle;
	
	public class Smoke extends Sprite
	{
		
		private var _radius:int;
		private var _color:uint;
		
		public function Smoke(radius:int=12,color:uint=0xff88888) 
		{
			_radius = radius;
			_color = color;
			
			var _smoke:SimpleCircle = new SimpleCircle(0, 0, _radius, _color);
			addChild(_smoke);
		}
		
	}

}