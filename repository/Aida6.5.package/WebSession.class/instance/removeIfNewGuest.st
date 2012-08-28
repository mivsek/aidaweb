releasing state
removeIfNewGuest
	"remove yourself if completelly fresh Guest session, used for DOS attack countermeasures"
	(self isGuest and: [(SpTimestamp now asSeconds - self created asSeconds) < 1])
		ifTrue: [self removeYourself]