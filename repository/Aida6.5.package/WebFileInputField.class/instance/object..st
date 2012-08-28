accessing
object: anObject
	"set or change the object of model adaptor"
	self adaptor isNil  ifTrue: [self adaptor: AidaModelAdaptor new].
	self adaptor subject: anObject