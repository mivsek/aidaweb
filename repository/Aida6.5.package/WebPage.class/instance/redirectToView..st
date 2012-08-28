redirects
redirectToView: aViewSymbol
	"send to browser a command to reload current page with this view on same object"
	| app object |
	app := self app.
	object := app observee notNil ifTrue: [app observee] ifFalse: [app].
	self redirectTo: object view: aViewSymbol