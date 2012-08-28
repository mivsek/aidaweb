testing-parsing
testParseFalse
	self json: 'false' parseTo: false.
	self json: '  false' parseTo: false.
	self json: 'false  ' parseTo: false.
	self json: '  false  ' parseTo: false.