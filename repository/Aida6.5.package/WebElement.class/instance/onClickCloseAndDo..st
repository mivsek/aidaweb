events-actions
onClickCloseAndDo: aBlock
	"on click first evaluate a block then close the current window (usually popup)"
	self on: #click closeAndDo: aBlock