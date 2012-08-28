views
viewWakeupRichEditor
	"to prefetch all JS libraries"
	"call that from background Ajax call"
	self context form addText: 'Just to prefetch all TinyMCE JavaScript libraries'; addBreak.
	self context form addRichEditorAspect: #dummy for: self