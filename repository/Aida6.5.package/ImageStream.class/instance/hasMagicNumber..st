private
hasMagicNumber: aByteArray 
	| position array |
	position := imageStream position.
	imageStream size - position >= aByteArray size
		ifTrue: 
			[array := (imageStream next: aByteArray size) asByteArray.
			array = aByteArray ifTrue: [^true]].
	imageStream position: position.
	^false