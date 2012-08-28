private-obsolete
actionSearch
	"a generic action when search button is pressed. It can be in almost every page."
	| indexApp |
	indexApp := self site index aidaWebAppFor: self session.
	indexApp searchString: self search. self search: ''.
	indexApp actionMain.
	self redirectTo: self site index view: #results