views-elements
tabsElement
	^ViewTabs new
		addView: #main description: 
			(self isFirstPage ifTrue: ['First page'] ifFalse: ['Selected page']);
"		addView: #hits description: 'All hits';"
		addView: #referers description: 'Referers';
		yourself