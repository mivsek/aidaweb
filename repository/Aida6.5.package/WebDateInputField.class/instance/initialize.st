initialize-release
initialize
	super initialize.
	self size: 11. 
	self app style ensureJsAndCssForCalendarInHeader.
	self app style ensureJsResourceForCalendarSetup.