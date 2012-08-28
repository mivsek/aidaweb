scripts-components
calendarJsResource
	"For Javascript calendar input fields , see WebDateInputField"
	"WebStyle new calendarSetupJsResource"
	^self resources at: #jsCalendar ifAbsentPut:
		[WebMethodResource 
			fromMethod: #calendarJavascript on: self 
			contentType: 'text/javascript' preferedUrl: '/jscalendar/calendar.js' site: self site].