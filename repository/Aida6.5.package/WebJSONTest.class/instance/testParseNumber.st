testing-parsing
testParseNumber
	self json: '1' parseTo: 1.
	self json: '0123' parseTo: 123.
"	self json: '1.23e2' parseTo: 123. "
	self json: '-1' parseTo: -1.
	self json: '-0' parseTo: 0.
"	self json: '[-1.2]' parseTo: #(-1.2). "