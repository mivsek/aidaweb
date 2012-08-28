private-caching
removeFromURLResolver
	self resolver notNil
		ifTrue: [self resolver removeObject: self]