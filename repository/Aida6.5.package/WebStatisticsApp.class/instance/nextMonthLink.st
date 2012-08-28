views-elements
nextMonthLink
	self date currentMonth ifTrue: [^WebText text: '<font face="helvetica">></font>' ].
	^(WebLink text: '<font face="helvetica">></font>' linkTo: self observee)
		parameter: 'view' value: self view;
		parameter: 'month' value: self date firstDayInNextMonth monthIndex printString;
		parameter: 'year' value: self date firstDayInNextMonth year printString.