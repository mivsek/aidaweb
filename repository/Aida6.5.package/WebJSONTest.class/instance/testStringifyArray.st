testing-serializing
testStringifyArray
	self json: '[]' stringifyFrom: #().
	self json: '[[]]' stringifyFrom: #(#()).
	self json: '[[], []]' stringifyFrom: #(#() #()).
	self json: '["hi", "there"]' stringifyFrom: #('hi' 'there').
	self json: '[["a", "b", null]]' stringifyFrom: #(('a' 'b' nil)).