DailyValues is a handy for domain model to store values, one per a day. Used as kind of index for faster access to historical data, which is usally accessed newer mostly while older less and less. 

Typical usage:
	aDailyValue 
		at: Date today put: 1234;
		at: Date today add: 10;  "adds to previous value"
		allFromDate: Date doday -5 to: Date today;
		allThisWeek;
		allLastMonth;
		...
