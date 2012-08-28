private-accessing
historyCollection
	"this is an ordered collection of array with year, day in year, time, value, active flag. 
	Collection is ordered from oldest to newest version of value. Active flag is used to 
	'delete' some version from history, but you can still have a trace, who/when some 
	change occured.

	3.11.98 NOT USED anymore. Here just for migration!"


	historyCollection isNil ifTrue: [self initHistoryCollection].
	^historyCollection