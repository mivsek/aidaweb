views-elements
tabsSettingsElement
	| tabs |
	tabs := ViewTabs new.
	tabs
		addView: #settings description: 'Main settings';
		addView: #sites description: 'Sites'.
	^tabs