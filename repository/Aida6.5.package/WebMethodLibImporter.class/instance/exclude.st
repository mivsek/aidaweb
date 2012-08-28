accessing
exclude
	"directories to exclude from import, to skip demos etc."
	exclude ifNil: [^#()].
	^exclude