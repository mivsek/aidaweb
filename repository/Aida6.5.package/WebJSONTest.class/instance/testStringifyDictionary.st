testing-serializing
testStringifyDictionary
	self json: '{}' stringifyFrom: (Dictionary new).
	self json: '{"a": "a"}' stringifyFrom: (Dictionary new at: 'a' put: 'a'; yourself).
	self json: '{"a": [[]]}' stringifyFrom: (Dictionary new at: 'a' put: #(#()); yourself).
	self json: #('{"a":"b","b":"a"}' '{"b":"a","a":"b"}') 
		stringifyFromDict: (Dictionary new add: 'a'->'b'; add: 'b'->'a'; yourself).