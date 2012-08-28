views
viewMain
	"search directly then redirect to results"
	"Because Ajax redrection in WebPage does not support views"
	self results: (self observee objectsForWords: self searchString).
	self page: 1.
	self redirectToView: #results