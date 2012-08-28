actions
actionMain
	"search default web index for objects containing words from searchString, store results
   	in attribute results and st the next view as 'results' in order to print result web page"
	self results: (self observee objectsForWords: self searchString).
	self page: 1.
	self newView: #results