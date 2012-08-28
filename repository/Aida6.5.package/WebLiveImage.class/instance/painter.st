accessing
painter
	"painter is an object, which actually paints an image. It must respond to message displayOn: anGraphicsContect. By default, painter is self and paints some hello message. Subclasses should override displayOn: appropriately"

	painter isNil ifTrue: [self painter: self].
	^painter