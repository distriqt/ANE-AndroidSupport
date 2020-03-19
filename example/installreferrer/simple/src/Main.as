package
{
	
	import com.distriqt.extension.android.installreferrer.InstallReferrer;
	import com.distriqt.extension.android.installreferrer.events.InstallReferrerEvent;
	
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	
	
	public class Main extends Sprite
	{
		
		private var _text:TextField;
		
		public function Main()
		{
			_text = new TextField();
			_text.defaultTextFormat = new TextFormat( "_typewriter", 24 );
			_text.text = "Hello, World";
			_text.height = 500;
			_text.width = 500;
			addChild( _text );
			
			InstallReferrer.instance.addEventListener( InstallReferrerEvent.FEATURE_NOT_SUPPORTED, installReferrerEventHandler );
			InstallReferrer.instance.addEventListener( InstallReferrerEvent.SERVICE_UNAVAILABLE, installReferrerEventHandler );
			InstallReferrer.instance.addEventListener( InstallReferrerEvent.COMPLETE, installReferrerEventHandler );
			InstallReferrer.instance.getInstallReferrer();
			
			
			
			
		}
		
		
		private function installReferrerEventHandler( event:InstallReferrerEvent ):void
		{
			_text.text = event.type + "\n";
			
			if (event.type == InstallReferrerEvent.COMPLETE)
			{
				_text.appendText( event.referrerUrl );
			}
			
		}
	}
	
}
