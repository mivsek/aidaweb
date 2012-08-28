testing-serializing
testStringifyNumber
	self json: '1' stringifyFrom: 1.
	self json: '123' stringifyFrom: 123.
	self json: '-1' stringifyFrom: -1.
	self json: '[-1.2]' stringifyFrom: #(-1.2).