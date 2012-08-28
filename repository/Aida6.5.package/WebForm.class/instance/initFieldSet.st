initialize-release
initFieldSet
	"with all fields for fast check, if field is already registered"
	^self fields at: #set put: Set new.