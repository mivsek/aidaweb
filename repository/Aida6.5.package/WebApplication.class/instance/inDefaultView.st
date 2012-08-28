accessing
inDefaultView
	"#main or not defined"
	^(self view = self defaultView) | (self view = #'')