accessing
exclude: aDirNameStringOrArray
	"Directories to exclude from import, to skip demos etc. Can be a single name or array of names"
	exclude := (aDirNameStringOrArray isKindOf: String)
		ifTrue: [Array with: aDirNameStringOrArray]
		ifFalse: [aDirNameStringOrArray]