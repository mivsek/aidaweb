private-ids
registerIdFor: anElement
	anElement id isNil ifTrue: [anElement id: self nextId]. "auto id if not manually defined! "
	(self isRegistered: anElement) ifTrue: [^nil].
	(self ids includesKey: anElement id) ifTrue: 
		[self registeredSet remove: (self ids at: anElement id)]. "to replace with a new one"
	self ids at: anElement id put: anElement.
	self registeredSet add: anElement.