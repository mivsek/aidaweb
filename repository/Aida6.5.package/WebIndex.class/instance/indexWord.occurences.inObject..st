private-indexing
indexWord: aString occurences: aNumber inObject: anObject
	"put a aNumber occurences of a word in that object in index if word is valid one for indexing"
	| halfWord restWord secDic thirdDic num |
	(self isValidWord: aString) ifFalse: [^self].
	"put an object in indexed object, if not already exist"
	(self indexedObjects includesKey: anObject) ifFalse:
		[self indexedObjects at: anObject put: IdentitySet new].
	"prepare two parts of a words, first three letters and rest"
	halfWord := self halfWordFrom: aString.
	restWord := self restWordFrom: aString.
	"find or create a second level dictionary from first level one"
	secDic := self index at: halfWord 
		ifAbsent: [self index at: halfWord put: Dictionary new].
	"find or create last level dictionary from second level one"
	thirdDic := secDic at: restWord 
		ifAbsent: [secDic at: restWord put: Dictionary new].
	"put an object to third level dictionary and increment nr of worlds if not already exist"
	num := thirdDic at: anObject ifAbsent: [thirdDic at: anObject put: 0].
	thirdDic at: anObject put: num + aNumber.
	"make reference to the third level dictionary for a indexed word"
	(self indexedObjects at: anObject) add: thirdDic.