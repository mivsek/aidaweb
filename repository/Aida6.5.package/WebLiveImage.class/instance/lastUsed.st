private
lastUsed
	"timestamp of last usage. Used for caching algorithms. Set at HTML generation"

	lastUsed isNil ifTrue: [self lastUsed: Timestamp now].
	^lastUsed