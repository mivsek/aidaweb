viewing
show: anImage 
	"ImageStream show: Image fromUser."

	| image extent window |
	(anImage isKindOf: OpaqueImage)
		ifTrue: [image := anImage]
		ifFalse: [image := CachedImage on: anImage].
	extent := 64 @ 64 max: (image extent min: Screen default bounds extent - 60 asPoint).
	window := ScheduledWindow new.
	window label: 'Image'.
	window minimumSize: extent.
	window component: image.
	window open.
	^anImage