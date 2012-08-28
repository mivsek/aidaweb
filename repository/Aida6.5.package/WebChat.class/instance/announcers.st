private
announcers
	"actually blocks to be executed when change occurs. A weak dictionary with an App as key, so that sesion app 
	state cleanup also removes the block from here"
	announcers isNil ifTrue: [self initAnnouncers].
	^announcers