accessing
body
	"body of the module, add elements to body, not to module directly!"
	body isNil ifTrue: [body := WebElement new].
	^body