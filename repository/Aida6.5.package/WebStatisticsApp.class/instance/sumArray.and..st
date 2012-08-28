views-graphs
sumArray: aFirstArray and: aSecondArray
	| result |
	result := OrderedCollection new.
	aFirstArray with: aSecondArray do: [:first :second | result add: first + second].
	^result.

"WebStatisticsApp new sumArray: #(1 2 3 4) and: #(1 2 3 4)"