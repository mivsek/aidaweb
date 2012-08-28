accessing
value: aValue author: aString comment: aCommentString 
	"change a value of time series, which will be valid immediately - today. You should state author and a short comment about changes. see other methods for detailed explanation"

	self value: aValue
		dated: Date today
		author: aString
		comment: aCommentString