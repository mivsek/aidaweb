testing-parsing
testParseArray
	self json: '[]' parseTo: #().
	self json: '[[]]' parseTo: #(#()).
	self json: '[[], []]' parseTo: #(#() #()).
	self json: '["hi", "there"]' parseTo: #('hi' 'there').
	self json: '[["a", "b", null]]' parseTo: #(('a' 'b' nil)).