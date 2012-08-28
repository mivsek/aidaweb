private
copy
	| new |
	new := super copy.
	new 
		parent: nil;
		initOtherValues;
		name: self name;
		surname: self surname. "because it can be on his aPerson"
	self copyOtherTo: new.
	^new