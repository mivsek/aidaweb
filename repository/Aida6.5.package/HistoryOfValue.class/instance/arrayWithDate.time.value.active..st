private-history arrays
arrayWithDate: aDate time: aTime value: aValue active: aBoolean

	"return a array with argument vaules for entry to history collection"

	| array |
	array := Array new: 5.
	array 
		at: 1 put: aDate year;
		at: 2 put: aDate day;
		at: 3 put: (aTime notNil ifTrue: [aTime asSeconds] ifFalse: [0]);
		at: 4 put: aValue;
		at: 5 put: aBoolean.
	^array