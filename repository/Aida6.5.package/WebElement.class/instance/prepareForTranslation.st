private
prepareForTranslation
	"if element has multilingual text, make it in-line editable for translation"
	"Sublcasses should implement editing accordingly"
	self elements do: [:each | each prepareForTranslation]