private-adding-removing
addValue: aValue dated: aDate author: aString comment: aCommentString
	"adds data, which is newer than any existing one"
	self dates add: aDate asDays.
	self values add: aValue.
	self changedDates add: Date today asDays.
	self authors add: aString.
	self comments add: aString.