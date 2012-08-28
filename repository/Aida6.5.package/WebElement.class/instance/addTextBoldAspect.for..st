adding text
addTextBoldAspect: aSymbol for: anObject
	"depening on portlet mode (#view or #edit) return only text or make an input field"
	^self addTextAspect: aSymbol for: anObject attributes: #b