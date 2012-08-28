accessing
password
	"returns SHA1 encrypted password! "
	password isNil ifTrue: [^''].
	^password