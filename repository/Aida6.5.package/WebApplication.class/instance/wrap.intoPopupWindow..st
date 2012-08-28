private-ajax
wrap: anElement intoPopupWindow: aWebWindow
	"put the element into a WebWindow and prepare it for popup"
	| ctx o l |
	ctx := aWebWindow context.
	aWebWindow addText: '<style>', aWebWindow popupStyle, '</style>'.
	o := WebElement newId: 'overlay', ctx level printString.
	l := (WebElement newId: 'lightbox', ctx level printString) style: 'display: none;'.
	l add: anElement.
	aWebWindow add: o; add: l.
	aWebWindow scriptAfter: 'updateLightboxLevel(', ctx level printString,')'. "from WebStyle>>js30Lightbox"
	aWebWindow elementToReplace: ctx parent window popupStub.
	aWebWindow afterCloseUpdate: anElement afterCloseUpdate. "if any"
	^aWebWindow