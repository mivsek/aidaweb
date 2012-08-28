views-elements
tabsReferersElement
	^ViewTabs new
		addView: #referers description: 'Today';
		addView: #referersYesterday description: 'Yesterday';
		addView: #referersWeekly description: 'This week';
		addView: #referersAll description: 'All';
		yourself