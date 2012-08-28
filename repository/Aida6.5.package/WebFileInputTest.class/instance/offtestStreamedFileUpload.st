testing
offtestStreamedFileUpload
	"this test temporarly off"
	| request session app stream |
	request := self postFileRequest.
	session := WebSession new. session lastRequest: request. request session: session.
	app := WebApplication new session: session.
	app ensureContextForView: #main for: request.
	stream := WriteStream on: ByteArray new.
	app add: 
		((WebFileInputField toStream: stream filenameAspect: #filename forObject: self) name: 'field7').
	app window registerFormElements.
	"simulate receiving a request"
	app context form registerStreamedFieldsInto: request. "announce where to stream uploaded file"
	app acceptInputsAndActionFrom: request. "this will trigger defered parsing of postdata and stream it to stream"
	self file: stream contents asString.
	self assert: self filename = 'event.ical'.
	self assert: (self file readStream upTo: Character cr) = 'BEGIN:VCALENDAR'.