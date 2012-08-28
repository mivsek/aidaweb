*Aida
withHeadingAnchors
	"add anchors before all H1-5 tags, each with sequence number of that tag, eg: <a name=h-15>"
	| in out tag number |
	in := self readStream. number := 1.
	out := WriteStream on: String new.
	[in atEnd] whileFalse:
		[out nextPutAll: (in upTo: $<).
		in atEnd ifFalse: [tag := in upTo: $>] ifTrue: [^out contents].
		(tag size = 2 and: [tag first asLowercase = $h and: [tag last isDigit]] ) ifTrue:
			[out nextPutAll: '<a name="h-', number printString, '"></a>'. 
			number := number +1].
		out nextPutAll: '<', tag, '>'].
	^out contents

"'<h1>Heading1</h1><h2>Heading2</h2>' withHeadingAnchors"