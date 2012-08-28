clipboard
copyToClipboard
	"copy an url and title of current view of observee object to web clipboard"
	| object |
	object := self observee isVersionedObject
		ifTrue: [self observee currentVersion] "so that link will be aways same regardles of version!"
		ifFalse: [self observee].
	title := (object class canUnderstand: #id) ifTrue: [object id, ' '] ifFalse: [''].
	title := (object class canUnderstand: #title) ifTrue: [title, object title] ifFalse: [nil].
	title isNil ifTrue: 
		[title := (object class canUnderstand: #indexTitle) ifTrue: [object indexTitle] ].
	title isNil ifTrue: [title := self title].
	self clipboard 
		title: title;
		url: (self site urlResolver halfUrlFor: object);
		object: object