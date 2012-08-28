private
migrateToUnicode
	"from iso8859-2"
	"Address allInstances do: [:each | each migrateToUnicode]"
	title notNil ifTrue: [title := title ensureUnicodeSloveneChars].
	firstName notNil ifTrue: [firstName := firstName ensureUnicodeSloveneChars].
	middleName notNil ifTrue: [middleName := middleName ensureUnicodeSloveneChars].
	lastName notNil ifTrue: [lastName := lastName ensureUnicodeSloveneChars].
	company notNil ifTrue: [company := company ensureUnicodeSloveneChars].
	street notNil ifTrue: [street := street ensureUnicodeSloveneChars].
	city notNil ifTrue: [city := city ensureUnicodeSloveneChars].
	country notNil ifTrue: [country := country ensureUnicodeSloveneChars].