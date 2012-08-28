documents
documentsToKnow
	"all documents with which this person should know about (be notified)"
	^self repository root allDocuments select: [:each | each isReleased and: [each shouldKnow: self]].