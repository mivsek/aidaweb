private
resources
	"a dictionary of method resources, name symbol as key, a resource as value"
	resources isNil ifTrue: [self initResources].
	^resources