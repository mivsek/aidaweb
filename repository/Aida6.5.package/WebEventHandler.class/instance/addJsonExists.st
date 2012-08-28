actions
addJsonExists
	"jsonExists event: JSON support present in user's browser "
	^self addActionBlock:
		[:receivedEvent |
		receivedEvent context session 
			setJsonExists]