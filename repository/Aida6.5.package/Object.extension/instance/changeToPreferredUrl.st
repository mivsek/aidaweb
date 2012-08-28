*Aida
changeToPreferredUrl
	"URL of that object is changed to one suggested by its #prefferedUrl method."
	"Note that its existing URLs are removed!"
	"Call that method only from Apps, Widgets or Styles!"
	^self app site urlResolver changeToPreferredUrl: self