accessing
last4Lines
	"empty lines in front, if less than 4 lines exist"
	| last |
	last := OrderedCollection new.
	((4 - self lines size) max: 0) timesRepeat: [last add: ''].
	((self lines size - 4) max: 1) to: self lines size do: [:inx | last add: (self lines at: inx)].
	^last