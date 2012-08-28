ensure resources
ensureResourcesInPageHeader
	"JavaScript, CSS"
	" For CSS see WebStyle richEditorCssResource and richEditorStyleSheet"
	"Be carefull to add the same url in initRichEditorScript at content_css !"
	| site |
	TinyMCELibrary ensure.
	site := self firstAppFromStack site.
	site urlResolver halfUrlFor: site style richEditorCssResource. "just to register if not yet"