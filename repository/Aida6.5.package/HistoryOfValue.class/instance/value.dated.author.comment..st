accessing
value: aValue dated: aDate author: aString comment: aCommentString 
	""

	| index |

	index := self indexForDate: aDate. 
	index isNil   "older than any existing or first" 
		ifTrue: 
			[self 
				insertValue: aValue 
				dated: aDate
				author: aString 
				comment: aCommentString
				beforeIndex: 1.
			^self].

"Sprememba 18.11.1998 Sivec, prej 'index >= self dates  size'."
	index > self dates  size  "newer than any existing"
		ifTrue: 
			[self addValue: aValue dated: aDate author: aString comment: aCommentString. ^self].


	(index ~= 0 and: [(self dates at: index) = aDate asDays]) "already exists"
		ifTrue: 
			[self 
				changeValue: aValue 
				author: aString 
				comment: aCommentString 
				onIndex: index.
			^self].

		self    "insert new somewhere in the middle"
			insertValue: aValue 
			dated: aDate
			author: aString 
			comment: aCommentString
			beforeIndex: index+1.



"History new value: 1234 dated: Date today author: 'Janko' comment: 'test'"