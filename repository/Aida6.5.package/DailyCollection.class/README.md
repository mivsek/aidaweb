DailyCollection is a handy for domain model to store values in collections, one per a day. Used as kind of index for faster access to historical data, which is usally accessed newer mostly while older less and less.

Typical usage:
	aDailyCollection 
		add: aSomething onDate: Date today;
		allDated: Date today;
		allThisYear;
		allLastMonth;
		...