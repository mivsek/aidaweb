initialize-release
initStreamedFieldSet
	"all fields which demands request post data streaming directly to output stream"
	^self fields at: #streamedFields put: Set new.