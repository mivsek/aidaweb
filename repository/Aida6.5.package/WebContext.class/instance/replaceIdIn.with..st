private-ids
replaceIdIn: anElement with: anOldElement
	"new anElement should have same id as an old one"
	anOldElement isNil ifTrue: [^nil].
	self registeredSet 
		remove: anOldElement ifAbsent: []; 
		add: anElement.
	self ids removeKey: anOldElement id ifAbsent: [].
	anElement attributesAt: #id put: anOldElement id. "anElement id: would deadlock! "
	self ids at: anElement id put: anElement.