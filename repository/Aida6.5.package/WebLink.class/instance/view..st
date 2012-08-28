accessing
view: aViewStringOrSymbol
	"for speedy additions of a view parameters to urls"
	"ignore #main, because this is default view anyway!"
	((aViewStringOrSymbol = 'main') | (aViewStringOrSymbol = #main)) ifTrue: [^self].
	self parameter: 'view' value: aViewStringOrSymbol