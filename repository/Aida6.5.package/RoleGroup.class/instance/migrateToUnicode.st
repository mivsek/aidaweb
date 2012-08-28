private
migrateToUnicode
	"from iso8859-2"
	name notNil ifTrue: [name := name ensureUnicodeSloveneChars].