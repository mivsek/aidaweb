actions
addPopup: anElement onStub: aStubElement
	^self addActionBlock:
		[:receivedEvent |
		anElement 
			elementToReplace: aStubElement; 
			creationContext: receivedEvent context; "changed to popup in WebApplication respondToEvent:"
			resetShallQueue; "queue for sending to browser not in #update but after popup is wraped in window"
			update]