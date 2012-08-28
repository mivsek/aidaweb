private-building
linkForPage: aNumber
	| app linkTarget dummyLink |
	app := self app.
	linkTarget := app isStandaloneApp ifTrue: [app class] ifFalse: [app observee].
	dummyLink := WebLink text: aNumber printString linkTo: (Array with: linkTarget with: '-').
	app inDefaultView ifFalse: [dummyLink view: app view].
	dummyLink onClickUpdate: self with: 'page-', aNumber printString.
	^dummyLink