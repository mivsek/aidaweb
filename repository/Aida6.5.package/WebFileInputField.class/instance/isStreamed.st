private
isStreamed
	"file is received directly from request into output stream"
	^self writeStream notNil or: [self writeBlock notNil]