indexing
indexTitle
	"find title, if noone, then return url"
	1 to: self elements size do: [:index |
		('<TITLE*' match: (self elements at: index)) ifTrue: [^self elements at: index+1] ].
	^self site urlResolver halfUrlFor: self