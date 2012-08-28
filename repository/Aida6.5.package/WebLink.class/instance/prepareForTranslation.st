translation
prepareForTranslation
	"if link with multilingual text, replace it with in-place input field and add a 'link' with link on right"
	| copied onlyText |
	self isMultilingual ifFalse: [^nil].
	copied := self copy.
	super prepareForTranslation. "of WebText part of link"
	onlyText := self asWebText.  "to avoid to be link anymore"
	copied text:  '<small>link</small>'.
	onlyText addTextSmall: ' ('; add: copied; addTextSmall: ')'.
	self parent replace: self with: onlyText.