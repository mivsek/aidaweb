testing
isExecutingInOwnProcess
	"context's process will execute the request only if needed, that is, if we have two (or more)
	contexts because first is waiting for second to return some value (like in confirmation dialog)"
	^self process notNil