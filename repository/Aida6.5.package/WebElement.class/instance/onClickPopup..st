events-ajax
onClickPopup: anElement
	"popup a specified element (can be also a WebWidget) with fresh content from server (AJAX) in a 
       new window on the same page"
	self onClickPopup: anElement thenUpdate: nil