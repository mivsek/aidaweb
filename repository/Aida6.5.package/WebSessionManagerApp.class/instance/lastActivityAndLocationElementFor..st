views-elements
lastActivityAndLocationElementFor: aSession
	| e loc |
	e := WebElement new.
	e addText: aSession lastActivityText.
	aSession geolocation notNil ifTrue:
		[loc := (aSession geolocation latitude printString copyWithout: $d ), ',', 
			(aSession geolocation longitude printString copyWithout: $d ).
		e addBreak.
		e addLinkTo: 'http://maps.google.com/maps?q=', loc, '(user''s position)' text: 'position on the map'].
	^e