testing
wasLoggedInUser: aWebUser
	"or still is"
	self user = aWebUser ifTrue: [^true].
	^self loginHistory all contains: [:record | (record at: 2) = aWebUser]