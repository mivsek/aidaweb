views-widgets
widgetComposedExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example: Widget composed of two widgets'.
	e add: WebDemoWidget2 new.
	^e