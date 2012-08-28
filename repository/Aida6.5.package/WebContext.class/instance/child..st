private
child: aContext
	"add another context in the chain"
	(child notNil and: [aContext notNil]) ifTrue: [child close]. "and remove from app contexts etc."
	child := aContext.
	aContext notNil ifTrue: [aContext parent: self]