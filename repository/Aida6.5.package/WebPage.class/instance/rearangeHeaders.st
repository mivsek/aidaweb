private-streaming
rearangeHeaders
	"put inline CSS style at the end to allow overriding /screen.css and CSS from libraries"
	| hdrs |
	hdrs := self headers copy.
	1 to: self headers size do: [:inx || header |
		header := hdrs at: inx. "header = aTagString -> aString "
		header key = 'style' ifTrue:
			[self headers removeIndex: inx.
			self headers add: header] ]