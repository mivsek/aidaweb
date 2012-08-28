private
migrateToUnicode
	"from iso8859-2"
	"WebUser allInstances do: [:each | each migrateToUnicode]"
	username notNil ifTrue: [username := username ensureUnicodeSloveneChars].
	password notNil ifTrue: [password := password ensureUnicodeSloveneChars].
	name notNil ifTrue: [name := name ensureUnicodeSloveneChars].
	surname notNil ifTrue: [surname := surname ensureUnicodeSloveneChars].
	company notNil ifTrue: [company := company ensureUnicodeSloveneChars].
	city notNil ifTrue: [city := city ensureUnicodeSloveneChars].
	country notNil ifTrue: [country := country ensureUnicodeSloveneChars].