private
migrateToUnicode
	"from iso8859-2"
	"OrganizationUnit allInstances do: [:each | each migrateToUnicode]"
	super migrateToUnicode.