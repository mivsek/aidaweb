drawing
displayOn: aGraphicsContext
	| rectangle |
	self initGraphics.
	rectangle := Rectangle origin: 2 @ 2 extent: (self width - 4) @ (self height - 4).
	self graphics add: rectangle asStroker.
	self drawAxle.
	self drawYPoints.
	self graph.
	self drawTitle.
	self graphics displayOn: aGraphicsContext.