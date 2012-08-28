accessing
newView

	"return a value of a 'view' parameter in query part of a URL to be generated. Also used for changing views in a state machine for web applications (in method actionFormForm (here is set) and method printWebPage (here is used to genererate appropriate page))"

	^self parms at: 'view' ifAbsent: [^''].