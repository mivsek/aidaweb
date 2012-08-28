*Aida
withoutHtmlTags
	"strip all tags and newlines, replace <br> and <p> with cr"
	| in out text tag |
	in := self readStream.
	out := WriteStream on: String new.
	[in atEnd] whileFalse:
		[text := ((in upTo: $<) copyWithout: Character cr).
		text := text copyReplaceAll: '&scaron;' with: (String with: AIDASite chars). "slovenian s^"
		text := text copyReplaceAll: '&Scaron;' with: (String with: AIDASite charS). "slovenian S^"
		text := text copyReplaceAll: '&nbsp;' with: ' '. "nonbreakable space"
		out nextPutAll: text.
		in atEnd ifFalse: [tag := in upTo: $>].
		(tag = 'br') | (tag = 'p') ifTrue: [out nextPut: Character cr ] ].
	^out contents

"'<span>by Michael A. <br>Prospero</span>' withoutHtmlTags"