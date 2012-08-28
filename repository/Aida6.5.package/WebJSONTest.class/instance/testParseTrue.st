testing-parsing
testParseTrue
	self json: 'true' parseTo: true.
	self json: '  true' parseTo: true.
	self json: 'true  ' parseTo: true.
	self json: '  true  ' parseTo: true.