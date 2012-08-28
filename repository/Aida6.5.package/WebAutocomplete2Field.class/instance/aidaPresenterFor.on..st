private-streaming
aidaPresenterFor: aRequest on: aSession
	"Ajax call via session from jQuery Autocomplete to return matched choices"
	| presenter criteria |
	presenter := WebJSONPresenter new.
	criteria := aRequest queryAt: 'term'. "characters entered so far in Autocomplete field"
	presenter presenterBlock: 
		[self choicesAsJsonForEntry: criteria ].
	^presenter