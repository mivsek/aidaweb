private
migrateToUnicode
	"DocLink allInstances do: [:each | each migrateToUnicode]"
	title notNil ifTrue: [title := title ensureUnicodeSloveneChars]