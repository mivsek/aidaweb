testing-serializing
testStringifyString
	self json: '"hi"' stringifyFrom: 'hi'.
	self json: '"\""' stringifyFrom: '"'.
	self json: '"\\"' stringifyFrom: '\'.
	self json: '""' stringifyFrom: ''.