testing-parsing
testParseNull
	self json: 'null' parseTo: nil.
	self json: '  null' parseTo: nil.
	self json: 'null  ' parseTo: nil.
	self json: '  null  ' parseTo: nil.