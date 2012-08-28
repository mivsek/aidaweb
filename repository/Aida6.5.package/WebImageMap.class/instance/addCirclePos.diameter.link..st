adding areas
addCirclePos: aPositionPoint diameter: aNumber  link: aWebLink

	| coords |
	coords := Array
		with: aPositionPoint x
		with: aPositionPoint y
		with: aNumber.
	self addShape: #circle coordinates: coords link: aWebLink