private
refreshed
	"timestamp of last gif creation. Used for caching algorithms. Set,when calling gif: method"

	refreshed isNil ifTrue: [self refreshed: Timestamp now].
	^refreshed