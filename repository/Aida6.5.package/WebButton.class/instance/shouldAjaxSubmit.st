testing
shouldAjaxSubmit
	"in popup window and widgets always Ajax submit! "
	| form |
	form := self form.
	form parent isPureWidget ifTrue: [^true].
	form parent isWebPage "and not a popup window" 
		ifTrue: [^false]. "can submit normally"
	^true