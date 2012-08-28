servlets
servletPerform: aMessageString on: aWebApp

	| method |
	method := (self methodFrom: aMessageString).
	(aWebApp class canUnderstand: method) ifFalse: [^nil].
	^aWebApp
		perform: method
		withArguments: (self argumentsFrom: aMessageString).