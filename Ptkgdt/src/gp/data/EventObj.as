package gp.data 
{
	import flash.events.EventDispatcher;
	import flash.events.TimerEvent;
	import mx.collections.ArrayCollection;
	/**
	 * ...
	 * @author truonghinh
	 */
	public class EventObj extends EventDispatcher
	{
		[Embed("../../assets/images/icon1.png")]
		public static var ICON1:Class;
		
		[Embed("../../assets/images/icon2.png")]
		public static var ICON2:Class;
		
		[Embed("../../assets/images/icon3.png")]
		public static var ICON3:Class;
		
		[Embed("../../assets/images/icon4.png")]
		public static var ICON4:Class;
		
		private static var icons:Vector.<Class> = Vector.<Class>([ ICON1, ICON2, ICON3, ICON4 ]);
		
		[Bindable]public var label:String;
		
		[Bindable]public var secondLabel:String;
		
		[Bindable]public var children:ArrayCollection;
		
		[Bindable]public var icon:Class;
		
		[Bindable]public var value:String;
		
		[Bindable]public var firstTime:Time;
		
		[Bindable]public var secondTime:Time;
		
		public function EventObj(label:String=null,secondLabel:String=null,firstTime:Time=null,secondTime:Time=null,value:String=null) 
		{
			super();
			this.label = label;
			this.secondLabel = secondLabel;
			this.firstTime = firstTime;
			this.secondTime = secondTime;
			this.value = value;
		}
		
		public function setRandomIcon():void
		{
			icon = getRandomIcon();
		}
		
		public function getRandomIcon():Class
		{
			var index:int = Math.round(Math.random() * (icons.length - 0.1) - 0.45);
			return icons[index];
		}
		
	}

}
