package playground.src.sound 
{
	import flash.media.Microphone;
	import flash.system.Security;
	import flash.system.SecurityPanel;
	
	public class LiveSound
	{
		private var _mic:Microphone;
		
		public function LiveSound() 
		{
			_mic = Microphone.getMicrophone();
			Security.showSettings(SecurityPanel.MICROPHONE);
			_mic.setUseEchoSuppression(true);
			_mic.setLoopBack(true);
		}
		
		public function getActivityLevel():Number {
			return _mic.activityLevel;
		}
		
	}

}