testing-parsing
testParseDictionary
	self json: '{}' parseToDict: (Dictionary new).
	self json: '{"a": "a"}' parseToDict: (Dictionary new at: 'a' put: 'a'; yourself).
	self json: '{"a": [[]]}' parseToDict: (Dictionary new at: 'a' put: #(#()); yourself).
	self json: '{"a":"b", "b":"a"}' parseToDict: (Dictionary new add: 'a'->'b'; add: 'b'->'a'; yourself).