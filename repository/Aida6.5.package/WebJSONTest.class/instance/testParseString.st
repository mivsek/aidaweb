testing-parsing
testParseString
	self json: '"hi"' parseTo: 'hi'.
	self json: '"\""' parseTo: '"'.
	self json: '"\\"' parseTo: '\'.
	self json: '""' parseTo: ''.