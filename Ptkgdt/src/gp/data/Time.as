package gp.data 
{
	/**
	 * ...
	 * @author truonghinh
	 */
	public class Time 
	{
		[Bindable]public var Year:uint;
		
		[Bindable]public var Day:uint;
		
		[Bindable]public var Month:uint;
		
		public static const millisecondsPerMinute:int = 1000 * 60; 
		public static const millisecondsPerHour:int = 1000 * 60 * 60; 
		public static const millisecondsPerDay:int = 1000 * 60 * 60 * 24;
		
		public function Time() 
		{
			this.Year = 0;
			this.Month = 0;
			this.Day = 0;
		}
		
		public function Now():Date
		{
			return new Date();
		}
	}

}
