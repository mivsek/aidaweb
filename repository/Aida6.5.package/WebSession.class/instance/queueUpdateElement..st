private-serving
queueUpdateElement: anElement
	"this element is to be updated on the browser, stream it to a WebCommand and put into waiting queue"
	| stream stripped toUpdate |
	stream := WriteStream on: String new.
	stripped := anElement isWrapped 
		ifFalse: [anElement copy noDiv; nilAttributes]  "just plain element, no div,  to send its inner html only"
		ifTrue: [anElement parent copy]. "wrapped <span> element"
	stripped streamHtmlTo: stream for: nil on: anElement app session.
	toUpdate := anElement isWrapped
		ifFalse: [anElement elementToReplace] "anElement itself, except for popups"
		ifTrue: [anElement parent].  "wrapper <span> element"
	self queueCommand: 
		(WebCommand 
			newUpdate: toUpdate
			with: stream contents).