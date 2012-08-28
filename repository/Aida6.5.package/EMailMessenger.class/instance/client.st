private
client
	"a SMTP client"
	client isNil ifTrue: [self initClient].
	^client