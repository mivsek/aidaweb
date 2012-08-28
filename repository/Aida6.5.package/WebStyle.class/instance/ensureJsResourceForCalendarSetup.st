scripts-components
ensureJsResourceForCalendarSetup
	self site urlResolver halfUrlFor: self calendarJsResource.
	self site urlResolver halfUrlFor: self calendarSetupJsResource. 
	self site urlResolver halfUrlFor: self calendarLangJsResource.
	self site urlResolver halfUrlFor: self calendarCSSResource.