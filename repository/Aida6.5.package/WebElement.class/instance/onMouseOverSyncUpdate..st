private-obsolete
onMouseOverSyncUpdate: anElement
	"update (and show if not yet) a specified element from server (AJAX)"
	"wait until AJAX response returns (synchronous update)"
	self onMouseOverSyncUpdate: anElement with: nil