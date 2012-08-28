scripts-components
calendarSetupJsResource
	"For Javascript calendar input fields , see WebDateInputField"
	"WebStyle new calendarSetupJsResource"
	^self resources at: #jsCalendarSetup ifAbsentPut:
		[WebMethodResource 
			fromMethod: #calendarSetupJavascript on: self 
			contentType: 'text/javascript' preferedUrl: '/jscalendar/calendar-setup.js' site: self site].