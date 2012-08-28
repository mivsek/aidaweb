private
sortColumn
	"false or column"
	^self settingsAt: #sortColumn ifAbsent: [nil]