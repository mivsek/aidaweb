private
boldify: aString withWord: aWordString
	"make appearance of this word bold"
	| matchString in out wstream btag unbtag |
	matchString := aWordString, '*'.
	btag := '<b>'. unbtag := '</b>'.
	in := aString readStream. out := WriteStream on: String new.
	[in atEnd] whileFalse:
		[ [in atEnd not and: [in peek isSeparator]] whileTrue: [out nextPut: in next]. 
		wstream := in upToSeparator readStream. "next word as stream"
		(matchString match: wstream contents)
			ifTrue: [out nextPutAll: btag, (wstream next: aWordString size), unbtag, 
				(wstream next: wstream size - aWordString size) ] 
			ifFalse: [out nextPutAll: wstream contents].
		in atEnd ifFalse: [out space].
		].
	^out contents

"WebIndexApp new boldify: 'This is Aidalized world, validated' withWord: 'aida' "