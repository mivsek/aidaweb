private-adding-removing
insertValue: aValue dated: aDate author: aString comment: aCommentString beforeIndex: anIndex
	"adds data in position before specified index"
	self dates add: aDate asDays beforeIndex: anIndex.
	self values add: aValue beforeIndex: anIndex.
	self changedDates add: Date today asDays beforeIndex: anIndex.
	self authors add: aString beforeIndex: anIndex.
	self comments add: aString beforeIndex: anIndex.