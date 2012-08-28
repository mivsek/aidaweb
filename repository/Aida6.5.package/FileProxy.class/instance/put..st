accessing
put: aString
	"replace self with contents in aString from PUT request"
	self content: aString.
	self writeToFile