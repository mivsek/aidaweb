private-accessing
indexForDate: aDate

	"return index of entry in dates collection, which fits most to the specified date. If no direct 
	entry on a specified date exist, then entry for previous date is used. If aDate is older than
	any date in collection, nil is returned!"


	| first last days mdays index |

	first := 1. last := self dates size.
	last = 0 ifTrue: [^nil].
	days := aDate asDays.
	days >= self dates last ifTrue: [^last].
	days < self dates first ifTrue: [^nil].
	[last >= first] whileTrue: 	
		[ "(first = last and: [days = (self dates at: first)]) ifTrue: [^first].  " " not needed! "
		index := (first + last) // 2.
		mdays := self dates at: index.
		days = mdays ifTrue: [^index].
		days < mdays
			ifTrue: [last := index - 1.]
			ifFalse: [first := index + 1.]].
"2.11.98 Sivec prej :
		^1 max: index - 1.
"
	index := (first + last) // 2.
	^1 max: index.




"
| h |
h := History new.
h dates
	add: (Date today) asDays;
	add: (Date today + 1) asDays;
	add: (Date today + 3) asDays;
	add: (Date today + 4) asDays.
Transcript cr;show: (h indexForDate: Date today - 1) printString.
Transcript cr;show: (h indexForDate: Date today + 1) printString.
Transcript cr;show: (h indexForDate: Date today + 2) printString.
Transcript cr;show: (h indexForDate: Date today + 3) printString.
h inspect.
"





"
	self historyCollection keysAndValuesDo: [:index :array |
		(self activeFromArray: array) 
			ifTrue:
				[(self dateFromArray: array) < (aDate + 1)
					ifTrue: [prevIndex := index]
					ifFalse: [^prevIndex]	] ].
	^prevIndex
"