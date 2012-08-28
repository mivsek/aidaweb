attributes
tabIndex
	"This attribute specifies the position of the current element in the tabbing order of that form"
	^(self attributes at: #tabindex ifAbsent: [^nil]) asInteger