private
allComposedViews
	"remove 'view' and lowercase start of remining part of method to get a view name from method"
	^self allComposedViewMethods collect: [:each | 
		((String with: (each at: 5) asLowercase), 
			(each copyReplaceFrom: 1 to: 5 with: String new)) asSymbol].

"WebDemoApp new class allComposedViews"