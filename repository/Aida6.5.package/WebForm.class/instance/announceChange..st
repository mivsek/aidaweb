private-ajax
announceChange: aFormElement
	self announcers do: [:each | each value: aFormElement]