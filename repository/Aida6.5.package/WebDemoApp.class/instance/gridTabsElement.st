views-grid
gridTabsElement
 	^ViewTabs new
		addView: #grid description: 'All App classes';
		addView: #gridSelected description: 'Selected App classes';
		yourself.