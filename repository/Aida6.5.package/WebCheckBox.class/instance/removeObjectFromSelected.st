private-events
removeObjectFromSelected
	(self selected includes: self object) ifTrue: 
		[self selected remove: self object.
		self adaptor setChanged]