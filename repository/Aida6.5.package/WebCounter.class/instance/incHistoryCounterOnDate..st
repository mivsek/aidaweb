private
incHistoryCounterOnDate: aDate
	| array |
	aDate year < self year ifTrue: [^self error: 'future years not allowed'].
	array := (self yearlyHistory at: aDate year ifAbsentPut: [Array new: 366 withAll: 0] ).
	array at: aDate day put: (array at: aDate day)+1