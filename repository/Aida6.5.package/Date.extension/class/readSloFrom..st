*Aida
readSloFrom: aStream
	"Squeak specific" "ch isLetter"
	"Answer a Date read from the argument aStream in any of
	 the forms:
		<day> <monthName> <year>		(5.April 198  5.april 1982 5.apr 82 5.apr 1982)
		<day><monthNumber> <year>	(5.4.82 5.4.1982 050482 05041992)
	If year missing, then current year is used!"

	"Date readSloFrom: '12.12' readStream"

	| string withDots alphaMonth day month year |
	string := aStream contents.
	(string size < 4) ifTrue: [^nil].
	withDots := string includes: $. .
	alphaMonth := true. string detect: [:ch | ch isLetter] ifNone: [alphaMonth := false].
	withDots
		ifTrue: [alphaMonth 
			ifTrue: 
				[day := (aStream upTo: $. ) asInteger.
				[aStream peek = $ ] whileTrue: [aStream skip: 1].
				month := (aStream upTo: $ ).
				year := (aStream upToEnd) asInteger.
				(year = 0) ifTrue: [year := Date today year].

				]
			ifFalse: 	
				[day := (aStream upTo: $. ) asInteger.
				month := (aStream upTo: $. ) asInteger.
				year := (aStream upTo: $. ) asInteger.
				(year isNil or: [year= 0]) ifTrue: [year := Date today year].
				] ]
		ifFalse: [alphaMonth 
			ifTrue: []
			ifFalse: [
				day := (string copyFrom: 1 to: 2) asInteger.
				month := (string copyFrom: 3 to: 4) asInteger.
				(string size > 4)	
					ifTrue: [year := (string copyFrom: 5 to: string size) asInteger]
					ifFalse: [year := Date today year].
				] ].

	(year isKindOf: Integer) ifTrue:
		[(year < 100) ifTrue: 
			[(year < 20) ifTrue: [year := year + 2000] ifFalse: [year := year + 1900]].
		].
	(month isKindOf: String) ifTrue:
		[month := month select: [:ch | ch isLetter].
		(month  isEmpty not & (month at: 1) isLetter) ifTrue:
			[month := (month copyFrom: 1 to: 3) asLowercase.
			(month = 'jan') ifTrue: [month := 1]
				ifFalse: [(month = 'jan') ifTrue: [month := 1]
				ifFalse: [(month = 'feb') ifTrue: [month := 2]
				ifFalse: [(month = 'mar') ifTrue: [month := 3]
				ifFalse: [(month = 'apr') ifTrue: [month := 4]
				ifFalse: [(month = 'maj') ifTrue: [month := 5]
				ifFalse: [(month = 'jun') ifTrue: [month := 6]
				ifFalse: [(month = 'jul') ifTrue: [month := 7]
				ifFalse: [(month = 'avg') ifTrue: [month := 8]
				ifFalse: [(month = 'sep') ifTrue: [month := 9]
				ifFalse: [(month = 'okt') ifTrue: [month := 10]
				ifFalse: [(month = 'nov') ifTrue: [month := 11]
				ifFalse: [(month = 'dec') ifTrue: [month := 12]]]]]]]]]]]]].
			]
		].
	((day isKindOf: Integer) and:
		[(day between: 1 and: 31) and: 
			[(month isKindOf: Integer) and:
				[(month between: 1 and: 12) ]]]) ifFalse: [^nil].

	^Date newDay: day month: month year: year.  "Squeak specific"