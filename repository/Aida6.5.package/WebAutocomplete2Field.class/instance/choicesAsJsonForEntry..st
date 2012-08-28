private
choicesAsJsonForEntry: aString
	| choices |
	choices := self getChoicesForEntry: aString.
	choices := choices collect: [:each | 
		(Dictionary new
			at: #label put: (self empasizeStarting: aString in: each);
			at: #value put: each;
			yourself) ].
	^WebJSON stringify: choices.