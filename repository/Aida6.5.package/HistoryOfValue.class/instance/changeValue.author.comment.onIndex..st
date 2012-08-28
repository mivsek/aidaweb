private-adding-removing
changeValue: aValue author: aString comment: aCommentString onIndex: anIndexNumber
	"change data in a specified index"
	self values at: anIndexNumber put: aValue.
	self changedDates at: anIndexNumber put: Date today asDays.
	self authors at: anIndexNumber put: aString.
	self comments at: anIndexNumber put: aString.