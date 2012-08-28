drawing
displayOn: aGraphicsContext

	"default painting - some hello message. Subclasses should override for some more paintings"

	| composite text |
	composite := CompositePart new.
	text := 'This is a live GIF image' asText.
	text emphasizeAllWith: (Array with: #bold with: #color -> ColorValue blue).
	text := text asComposedText.
	composite add: text at: 100 @ (height/2).
	composite displayOn: aGraphicsContext.