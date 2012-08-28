private-ajax
check: anElementToUpdate on: aContext
	"check if element is updatable: it is first in a creation method. id is set and if in composition mode, set it.
	Raise error with good description to help better prepare Ajax updatable elements"
	anElementToUpdate isWebWidget ifTrue: [^anElementToUpdate registerId]. "to be sure"
	anElementToUpdate isStubElement ifTrue: [^true].
"	anElementToUpdate isFirstInMethod ifFalse:
		[^self error: 'Element to update must be first element in creation method! Widget can be used instead']. "
	anElementToUpdate registerId. "if not already"