accessing
asWebUser
	"parallel WebUser object"
	^self otherAt: #WebUser ifAbsent: [^nil]