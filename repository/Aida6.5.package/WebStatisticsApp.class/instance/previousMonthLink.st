views-elements
previousMonthLink
	^(WebLink text: '<font face="helvetica"><</font>' linkTo: self observee)
		parameter: 'view' value: self view;
		parameter: 'month' value: self date firstDayInPreviousMonth monthIndex printString;
		parameter: 'year' value: self date firstDayInPreviousMonth year printString.