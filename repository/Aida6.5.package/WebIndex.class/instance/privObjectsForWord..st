private-searching
privObjectsForWord: aString
	"find all objects, which include this word. Return more important objects first (more 
	occurences of worlds etc.)"
	| hits secDic searchWord keys word |
	(self isValidWord: aString) ifTrue:
		[hits := IdentityDictionary new.
		word := self prepareWord: aString.
		searchWord := (self restWordFrom: word), '*'.
		secDic := self index at: (self halfWordFrom: word) ifAbsent: [^hits].
		keys := secDic keys select: [:fkey | searchWord match: fkey].
		keys do: [:skey | 
       		(secDic at: skey) keysAndValuesDo: [:tkey :tvalue | 
				(hits includesKey: tkey) ifFalse: [hits at: tkey put: 0].
				hits at: tkey put: (hits at: tkey)+tvalue] ].
		^hits.
		] ifFalse: [^nil].

"(WebIndex default objectsForWord: 'knjiga') keys "