private-error reports
messageForError: anErrorString for: aRFC822Message
	| text |
	text := 'Napaka pri pos^iljanju e-pos^te

	', anErrorString, '

prejemnik: ', aRFC822Message to first.

	text := text, '  

To je samodejno sporoc^ilo iz informacijskega portala sistema kakovosti BiArt.'.

	^text