serving
answer: anObject toOptions: aRequest on: aWebSession
	| response |
	response := Swazoo.HTTPResponse ok.
	self isWebDAVEnabled ifTrue: 
	 	[response addHeaderName: 'DAV' value: '1,2'.
		"without following header Windows refuse to add new Web folder! "
		response addHeaderName: 'MS-Author-Via' value: 'DAV'].
	self addAllowHeaderTo: response.
	^response