scripts-components
calendarLangJsResource
	"For Javascript calendar input fields , see WebDateInputField"
	"WebStyle new calendarSetupJsResource"
	^self resources at: #jsCalendarLang ifAbsentPut:
		[WebMethodResource 
			fromMethod: #calendarLangJavascript on: self 
			contentType: 'text/javascript' preferedUrl: '/jscalendar/calendar-lang.js' site: self site].