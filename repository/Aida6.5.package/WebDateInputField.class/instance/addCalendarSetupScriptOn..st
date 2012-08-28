private
addCalendarSetupScriptOn: aStream
	aStream nextPutAll: '<script type="text/javascript">Calendar.setup({ inputField : "', self inputFieldId, 		'", ifFormat : "', self inputFieldFormat, 
		'", button : "', self buttonId, '"});</script>', self eol