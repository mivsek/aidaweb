adding areas
addRectanglePos: aPositionPoint size: aSizePoint  link: aWebLink

	| coords |
	coords := Array
		with: aPositionPoint x
		with: aPositionPoint y
		with: (aPositionPoint + aSizePoint) x
		with: (aPositionPoint + aSizePoint) y.
	self addShape: #rect coordinates: coords link: aWebLink