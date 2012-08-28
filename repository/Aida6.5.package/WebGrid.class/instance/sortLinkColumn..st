private-building
sortLinkColumn: aWebGridColumn
	| app linkTarget dummyLink |
	"Cannot sort a column which has an addBlock or is numbered"
	aWebGridColumn hasAddBlock ifTrue: [^WebText text: aWebGridColumn name].
	aWebGridColumn isNumbered ifTrue: [^WebText text: aWebGridColumn name].
	app := self app.
	linkTarget := app isStandaloneApp ifTrue: [app class] ifFalse: [app observee].
	dummyLink := WebLink text: aWebGridColumn name linkTo: (Array with: linkTarget with: '-').
	app inDefaultView ifFalse: [dummyLink view: app view].
	dummyLink onClickUpdate: self with: 'sort-', aWebGridColumn id printString.
	^dummyLink