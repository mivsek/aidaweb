private
prepareAttributesToStreamOn: aSession
	"prepare multilingual button text, if needed"
	super prepareAttributesToStreamOn: aSession.
	((self attributes includesKey: #value) 
		and: [(self attributes at: #value) aidaIsAssociation]) ifTrue:
			[self attributes 
				at: #value 
				put: (self textFromMultilang: (self attributes at: #value) on: aSession)
		]