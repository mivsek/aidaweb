private
existsJson
	"exists JSON support in user's browser?"
	^self otherAt: #JsonExists ifAbsent: [false]