private
checkboxes
	"nil or column"
	^self settingsAt: #checkboxesColumn ifAbsent: [nil]