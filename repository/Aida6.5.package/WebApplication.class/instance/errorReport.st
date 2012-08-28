error reporting
errorReport
	"element with report of errors, if any"
	| e |
	e := WebElement newId: #error.  "see WebStyle css42ErrorReport for style definition! "
	self showError notNil ifTrue: 
		[(e addText: self showError) style: '{color: red}'].
	self showError: nil.
	^e