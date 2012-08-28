private-indexing
prepareWord: aString
	"cut last char if vowel. Used for simple declension of slovene words"
	aString last isVowel 
		ifTrue: [aString size > 3
			ifTrue: [^aString copyFrom: 1 to: (aString size - 1)] ].
	^aString.

"
WebIndex new prepareWord: 'knjiga'
"