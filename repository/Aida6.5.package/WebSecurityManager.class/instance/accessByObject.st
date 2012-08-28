private
accessByObject 
	"this is a dictionary of user - access level pairs for access to the object, 
	which reference is a key in dictionary"
	accessByObject isNil ifTrue: [self initAccessByObject].
	^accessByObject