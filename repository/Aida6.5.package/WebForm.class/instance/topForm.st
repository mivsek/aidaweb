accessing
topForm
	"returns the first, top form in the page/popup window"
	^self isTopForm 
		ifTrue: [self]
		ifFalse: [self superform topForm]