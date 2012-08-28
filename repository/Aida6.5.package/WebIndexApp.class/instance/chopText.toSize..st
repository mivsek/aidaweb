views-elements
chopText: aString toSize: aNumber 
	| inStream outStream |
	inStream := aString readStream.
	outStream := WriteStream on: String new.
	1 to: aString size
		do: 
			[:count | 
			inStream atEnd ifTrue: [^outStream contents].
			(count >= aNumber and: [inStream peek = $ ]) 
				ifTrue: [^outStream contents , ' ...'].
			outStream nextPut: inStream next].
	^outStream contents

	"WebIndexApp new chopText: 'hojladri hojladra' toSize: 5"