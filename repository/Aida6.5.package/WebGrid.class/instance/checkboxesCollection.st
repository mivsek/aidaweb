private
checkboxesCollection
	"collection of checked row objects"
	^self settingsAt: #checkboxesCollection ifAbsent: [nil]