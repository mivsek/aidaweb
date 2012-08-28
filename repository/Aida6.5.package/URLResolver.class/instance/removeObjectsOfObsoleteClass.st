adding-removing
removeObjectsOfObsoleteClass
	self site critical:
		[self allWebPages keys do: [:object | 
			object class isObsolete ifTrue: [self removeObject: object]] ].

"URLResolver default removeObjectsOfObsoleteClass"