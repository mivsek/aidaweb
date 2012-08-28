layout
searchButton
	searchButton isNil ifTrue: 
		[self searchButton: (WebButton new
			title: 'Search'; text: 'S'; action: #search; style: '{font-size: 90%}';
			tabIndex: 99;
			id: #search234;
			yourself)].
	^searchButton