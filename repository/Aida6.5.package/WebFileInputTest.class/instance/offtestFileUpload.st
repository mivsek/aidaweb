testing
offtestFileUpload
	"this test temporarly off"
	| request session app |
	request := self postFileRequest.
	session := WebSession new. session lastRequest: request. request session: session.
	app := WebApplication new session: session.
	app ensureContextForView: #main for: request.
	app add: 
		((WebFileInputField aspect: #file filenameAspect: #filename forObject: self) name: 'field7').
	app window registerFormElements.
	"simulate receiving a request"
	app acceptInputsAndActionFrom: request.
	self assert: self filename = 'event.ical'.
	self assert: (self file readStream upTo: Character cr) = 'BEGIN:VCALENDAR'.