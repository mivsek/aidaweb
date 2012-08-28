scripts-components
ensureJsAndCssForCalendarInHeader
	| page url headerValue |
	self ensureJsResourceForCalendarSetup.
	page := self app context page.
	url := '/jscalendar/calendar.js'.
	headerValue := ' src="', url, '" language="JavaScript" type="text/javascript"'.
	(page headers contains: [:each | each key = 'script' and: [each value = headerValue] ]) ifFalse: 
		[page addLinkToScreenStyleSheet: '/jscalendar/calendar.css'.
		page addHeader: 'script' value: headerValue.
		page addLinkToJavascript: '/jscalendar/calendar-lang.js'.
		page addLinkToJavascript: '/jscalendar/calendar-setup.js'.
		].