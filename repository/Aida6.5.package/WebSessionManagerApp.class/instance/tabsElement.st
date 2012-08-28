views-elements
tabsElement
	^ViewTabs new
		addView: #back description: 'Back';
		addView: #main description: 'Active';
		addView: #logged description: 'Logged in';
		yourself