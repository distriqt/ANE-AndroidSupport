/**
 *        __       __               __ 
 *   ____/ /_ ____/ /______ _ ___  / /_
 *  / __  / / ___/ __/ ___/ / __ `/ __/
 * / /_/ / (__  ) / / /  / / /_/ / / 
 * \__,_/_/____/_/ /_/  /_/\__, /_/ 
 *                           / / 
 *                           \/ 
 * http://distriqt.com
 *
 * This is a test application for the distriqt extension
 * 
 * @author Michael Archbold & Shane Korin
 * 	
 */
package
{
	import com.distriqt.test.transition.Main;
	
	import feathers.utils.ScreenDensityScaleFactorManager;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.display3D.Context3DProfile;
	import flash.display3D.Context3DRenderMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	import starling.core.Starling;
	
	
	/**	
	 * Sample application for using the Transition Native Extension
	 */
	public class TestTransition extends Sprite
	{
		////////////////////////////////////////////////////////
		//	CONSTANTS
		//
		
		
		////////////////////////////////////////////////////////
		//	VARIABLES
		//
		
		private var _starling:Starling;
		private var _scaler:ScreenDensityScaleFactorManager;
		
		
		////////////////////////////////////////////////////////
		//	FUNCTIONALITY
		//
		
		
		/**
		 *  Constructor
		 */
		public function TestTransition()
		{
			super();
			if(this.stage)
			{
				this.stage.align	 = StageAlign.TOP_LEFT;
				this.stage.scaleMode = StageScaleMode.NO_SCALE;
			}
			this.mouseEnabled = this.mouseChildren = false;
			this.loaderInfo.addEventListener(Event.COMPLETE, loaderInfo_completeHandler);
		}
		
		
		
		////////////////////////////////////////////////////////
		//	INTERNALS
		//
		
		
		
		
		////////////////////////////////////////////////////////
		//	EVENT HANDLERS
		//
		
		private function loaderInfo_completeHandler(event:Event):void
		{
			Starling.multitouchEnabled = true;
			this._starling = new Starling( Main, this.stage, null, null, Context3DRenderMode.AUTO, Context3DProfile.BASELINE );
			this._starling.enableErrorChecking = false;
			this._starling.skipUnchangedFrames = false;
			this._starling.supportHighResolutions = true;
			this._starling.start();
			
			this._scaler = new ScreenDensityScaleFactorManager(this._starling);
			
			this.stage.addEventListener(Event.DEACTIVATE, stage_deactivateHandler, false, 0, true);
		}
		
		
		private function stage_deactivateHandler(event:Event):void
		{
			this._starling.stop(true);
			this.stage.addEventListener(Event.ACTIVATE, stage_activateHandler, false, 0, true);
		}
		
		private function stage_activateHandler(event:Event):void
		{
			this.stage.removeEventListener(Event.ACTIVATE, stage_activateHandler);
			this._starling.start();
		}
		
		
		
		
	}
}

