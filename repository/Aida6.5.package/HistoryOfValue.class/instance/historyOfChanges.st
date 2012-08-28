accessing
historyOfChanges

	"return a history of all changes of value. It is returned as ordered collection of collections, each with:
	valid from date
	valid to date (for last change: nil)
	new value
	date of change
	author of change
	comment of change	

Returned collection has the oldest change (by valied from date) as first, the newest as last. "