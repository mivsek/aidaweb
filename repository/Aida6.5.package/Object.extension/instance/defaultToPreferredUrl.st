*Aida
defaultToPreferredUrl
	"Default URL of that object is set to one suggested by its #prefferedUrl method."
	"Existing URLs are preserved, but just default URL used for automatic URL management"
	"Call that method only from Apps, Widgets or Styles!"
	^self app site urlResolver defaultToPreferredUrl: self