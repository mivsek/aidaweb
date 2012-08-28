private-accessing
filter: aString
	"show only rows with value starting with aString"
	filter := aString.
	self parent page: 1 "always to the first page after filter change!"