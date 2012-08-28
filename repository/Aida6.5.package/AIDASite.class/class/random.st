utilities
random
	"a random generator, always seeded and therefore ready to geenrate numbers which are really 
       random"
	RandomGen isNil ifTrue: [RandomGen := Random new].
	^RandomGen