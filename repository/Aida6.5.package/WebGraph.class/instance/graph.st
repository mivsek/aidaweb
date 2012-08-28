drawing
graph
	"WebGraph new drawGraph"

	| aData aRectangle z c |
	z := self xLeftPosition + 1.
	c := self yBottomPosition.
	1 to: self data size
		do: 
			[:x | 
			aData := data at: x.
			aRectangle := Rectangle left: z
						right: z + self distance - 2
						top: c - (self heightInPixelsFor: aData)
						bottom: c.
			z := z + self distance.
			graphics add: ((GraphicsAttributesWrapper on: aRectangle asFiller)
						attributes: (GraphicsAttributes new paint: ColorValue blue))]