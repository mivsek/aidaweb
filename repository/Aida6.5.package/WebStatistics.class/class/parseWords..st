log analysis
parseWords: inputStream 
	"Answer the contents of the receiver, up to the next separator  character."

	| aStream |
	aStream := (String new: 200) writeStream.
	inputStream skipSeparators.
	inputStream class endOfStreamSignal handle: [:ex | ex return]
		do: 
			[
			[| char |
			char := inputStream next.
			char isSeparator ifTrue: [^aStream contents] ifFalse: [aStream nextPut: char]]
					repeat].
	^aStream contents