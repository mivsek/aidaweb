views-elements
tabsElement
	| tabs |
	tabs := ViewTabs new.
	tabs
		addView: #users description: 'Users';
		addView: #groups description: 'Groups'.
	(self user hasAdminRights and: [self user name = 'Admin']) ifTrue: "only user Admin allowed to change filters!"
		[tabs addView: #filters description: 'Filters'].
	tabs addView: #sessions description: 'Sessions'.
	^tabs