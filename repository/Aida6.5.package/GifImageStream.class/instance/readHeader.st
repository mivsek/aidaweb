decoding
readHeader
	| byte hasColorMap |
	((self hasMagicNumber: 'GIF89a' asByteArray)
		or: [self hasMagicNumber: 'GIF87a' asByteArray])
		ifFalse: [^self errorCanNotRead].
	self readWord.
	self readWord.
	byte := self next.
	hasColorMap := (byte bitAnd: 128)
				~= 0.
	bitsPerPixel := (byte bitAnd: 7)
				+ 1.
	byte := self next.
	byte := self next.
	hasColorMap
		ifTrue: 
			[| array |
			array := Array new: (1 bitShift: bitsPerPixel).
			1 to: array size do: [:i | array at: i put: (self colorValueFrom: (self next bitShift: 16)
							+ (self next bitShift: 8) + self next)].
			colorPalette := MappedPalette withColors: array]
		ifFalse: 
			[Transcript cr; show: 'GIF file does not have a color map.'.
			colorPalette := MappedPalette monochromeDefault].
	
	[byte := self next.
	byte == Extension]
		whileTrue: [self readExtension].
	byte = ImageSeparator ifFalse: [^self error: 'corrupt GIF file (nosep)'].
	self readWord.
	self readWord.
	width := self readWord.
	height := self readWord.
	interlace := (self next bitAnd: 64)
				~= 0