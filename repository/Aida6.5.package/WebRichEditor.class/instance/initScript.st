setup
initScript
	"See TinyMCE docs for explanation: http://tinymce.moxiecode.com/tinymce/docs/index.html"
	"beware, only one instance of editor should run at once! "
	"WebRichEditor basicNew richEditorInitScript"
	| language |
	language := self firstAppFromStack notNil
		ifTrue: [self firstAppFromStack site style richEditorLanguage]
		ifFalse: ['en'].
	^'
tinyMCE.init({
	mode : "specific_textareas",
	textarea_trigger : "mce_editable",
	language : "', language ,  '",
	content_css : "', self contentStyleUrl, '",
	theme : "advanced",
	plugins : "', self plugins, 
		(self inlinePopups ifTrue: [', inlinepopups'] ifFalse: ['']), '",
	theme_advanced_buttons1 : "', self buttonsFirstLine, '",
	theme_advanced_buttons2 : "', self buttonsSecLine, '",
	theme_advanced_buttons3 : "', self buttonsThirdLine, '",
	theme_advanced_toolbar_location : "top",
	theme_advanced_toolbar_align : "left",
	extended_valid_elements : "a[name|href|target|title|onclick],img[class|src|border=0|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name],hr[class|width|size|noshade],font[face|size|color|style],span[class|align|style]",
	save_enablewhendirty: "true",
	paste_use_dialog : "false",
	button_tile_map : "true",
	gecko_spellcheck : "true" ', 
 	(self saveCallback notNil ifTrue: [',
		save_callback : "', self saveCallback, '" ' ] ifFalse: ['']),
'});
'