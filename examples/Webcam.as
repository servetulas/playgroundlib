/**********************************************************************************
 * Demonstrates how to use the LiveCamera class and it's methods,
 * uncomment the lines with the methods to see them in effect
 * Servet Ulas - 2010
 * *******************************************************************************/

package examples 
{
	import flash.display.Sprite;
	import playground.src.video.LiveCamera;
	
	public class Webcam extends Sprite
	{
		
		private var _cam:LiveCamera;
		
		public function Webcam() 
		{
			//create an instance of LiveCamera
			_cam = new LiveCamera(320, 240);
			//add it to stage
			addChild(_cam);
			//blur the video feed - blur amount, blur quality
			//_cam.blur();
			//desaturate the video feed
			//_cam.noir();
			//invert colors in the video feed
			//_cam.invert();
			//use two tones to represent the image from the video feed - dark tone , light tone
			//_cam.doTwotone(0x44dbb9,0xff9944);
			//tint the video feed - red, green and blue values 0.0 to 1.0
			_cam.tint(1, .7, .4);
		}
		
	}

}