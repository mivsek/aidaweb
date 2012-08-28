layout
enhancedTitle: aString
	"enhanced with additional info, if needed"
	"if user is Admin, site name is attached at the start, for easier administration of many sites"
	aString aidaIsAssociation ifTrue: [^aString]. "dealing with multilang strings later"
	self app user isAdminUser ifTrue:
		[^self site name, ': ', aString].
	^aString