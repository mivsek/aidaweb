model adapting
acceptFormInputFrom: aPostDataArray
	| values |
	values := aPostDataArray class == Dictionary
		ifTrue:  [Set new add: (aPostDataArray at: self name); yourself]
		ifFalse: [(aPostDataArray allAt: self name) asSet].
	self acceptInputFromValues: values