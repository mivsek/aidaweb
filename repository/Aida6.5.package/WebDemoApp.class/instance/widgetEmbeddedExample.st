views-widgets
widgetEmbeddedExample
	| e |
	e := WebElement new.
	e addTextH4: 'Example: Widget embeded on the page'.
	e add: WebDemoWidget new.
	^e