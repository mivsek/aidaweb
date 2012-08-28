drawing
drawGraphWindow
	"WebGraph new drawGraphWindow"
	| win rectangle |
	win := ScheduledWindow new.
	win label: 'Graf obiskov na spletno stran'.
	win minimumSize: self width @ self height.
	graphics := CompositePart new.
	rectangle := Rectangle origin: 2 @ 2 extent: (self width - 4) @ (self height - 4).
	graphics add: rectangle asStroker.
	self drawAxle.
	self drawYPoints.
	self graph.
	self drawTitle.
	win component: (BoundedWrapper on: graphics).
	win open