private-events
addObjectToSelected
	(self selected includes: self object) ifFalse: 
		[self selected add: self object.
		self adaptor setChanged]