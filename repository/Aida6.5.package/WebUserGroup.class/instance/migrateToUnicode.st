private
migrateToUnicode
	"from iso8859-2"
	"WebUserGroup allInstances do: [:each | each migrateToUnicode]"
	name notNil ifTrue: [name := name ensureUnicodeSloveneChars].