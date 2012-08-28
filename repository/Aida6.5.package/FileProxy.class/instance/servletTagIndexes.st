accessing-tags
servletTagIndexes
	"indexes of elements, which represent servlet in original html file"
	servletTagIndexes isNil ifTrue: [self clearServletTagIndexes].
	^servletTagIndexes