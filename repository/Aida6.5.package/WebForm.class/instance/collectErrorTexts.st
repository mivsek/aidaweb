validation
collectErrorTexts
	"collect all validation error texts, separated by <br>"
	^self invalidFields 
		inject: ''
		into: [:text :each | text, each errorText, '<br>'].