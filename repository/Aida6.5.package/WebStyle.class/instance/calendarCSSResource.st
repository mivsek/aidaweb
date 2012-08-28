scripts-components
calendarCSSResource
	"For Javascript calendar input fields , see WebDateInputField"
	"WebStyle new calendarCSSResource"
	^self resources at: #jsCalendarCSS ifAbsentPut:
		[WebMethodResource 
			fromMethod: #calendarCSS on: self 
			contentType: 'text/css' preferedUrl: '/jscalendar/calendar.css' site: self site].