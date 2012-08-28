private-cache
cache
	"cached translations. A multilevel dictionary"
	"class->(method->(langCode->(key->translation))))) "
	cache isNil ifTrue: [self initCache].
	^cache