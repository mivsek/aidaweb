accessing
style
	"the result of this method will be added at the end of static css methods.
	See WebStyle>>screenStyleSheet"
	style isNil ifTrue: [style := ''].
	^style