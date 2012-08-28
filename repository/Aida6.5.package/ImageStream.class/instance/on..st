initialize-release
on: aStream 
	imageStream := aStream.
	(imageStream respondsTo: #binary)
		ifTrue: [imageStream binary].
	self progressValue: (ValueHolder with: nil)