private-subelements
allElements
	"get a collection of all subelements of elements down in a hierarcy of this element"
	| collection |
	collection := OrderedCollection new.
	self elements notNil ifTrue:
		[collection addAll: self elements.
		self elements do: [:each | collection addAll: each allElements] ].
	^collection

"
| el |
el := WebElement new.
el add: (WebLink image: nil  linkTo: nil).
el add: (WebText text: 'aaa').
el allElements.
"