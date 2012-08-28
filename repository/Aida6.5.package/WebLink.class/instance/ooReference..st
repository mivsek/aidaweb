private
ooReference: anObject
	"Set the hypertext link to other object. This reference is at HTML generation 
	resolved to urlReference by URLResolver.  ooReference has precedence over 
	urlReference, if both are set."
	ooReference := anObject.
	anObject isVersionedObject ifTrue: [self checkVersionedReference]