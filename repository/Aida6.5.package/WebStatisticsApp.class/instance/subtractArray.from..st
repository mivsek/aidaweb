views-graphs
subtractArray: aFirstArray from: aSecondArray
	| result |
	result := OrderedCollection new.
	aFirstArray with: aSecondArray do: [:first :second | result add: second - first].
	^result.

"WebStatisticsApp new subtractArray: #(1 2 3 4) from: #(1 2 3 4)"