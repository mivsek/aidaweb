private
migrateToUnicode
	"from iso8859-2"
	"Person allInstances do: [:each | each migrateToUnicode]"
	super migrateToUnicode.
	surname notNil ifTrue: [surname := surname ensureUnicodeSloveneChars].