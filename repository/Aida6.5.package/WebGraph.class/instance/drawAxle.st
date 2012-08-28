drawing
drawAxle
	| points yAxis xAxis z c a grayLine blackLine b |
	z := self xLeftPosition.
	c := self yBottomPosition.
	b := self yTopPosition.
	a := self xRightPosition.
	points := List new: 2.
	points add: z @ (self yTopPosition - 10);
		add: z @ (c + 5).
	yAxis := Spline controlPoints: points.
	points := List new: 2.
	points add: (z - 5) @ c;
		add: a @ c.
	xAxis := Spline controlPoints: points.
	graphics add: yAxis asStroker;
		add: xAxis asStroker.
	b to: c - ((c - b) // 5)
		by: (c - b) // 5
		do: 
			[:x | 
			points := List new: 2.
			points add: (z + 1) @ x;
				add: a @ x.
			grayLine := Spline controlPoints: points.
			graphics add: ((GraphicsAttributesWrapper on: grayLine asStroker)
						attributes: (GraphicsAttributes new paint: ColorValue veryLightGray)).
			points := List new: 2.
			points add: (z - 5) @ x;
				add: z @ x.
			blackLine := Spline controlPoints: points.
			graphics add: blackLine asStroker]