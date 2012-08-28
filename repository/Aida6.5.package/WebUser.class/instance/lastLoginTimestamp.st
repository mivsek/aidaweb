accessing-timestamps
lastLoginTimestamp
	self loginHistory isEmpty ifTrue: [^nil].
	^(self loginHistory all detect: [:array | (array at: 1) = #login] ifNone: [^nil])
		at: 2.                 	"what if he is logged in in more than one session?"