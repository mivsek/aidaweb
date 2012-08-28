private
allWebAppClassesTo: aCollection 
	"return an ordered collection with a WebApplication class all their subclasses ordered
	by levels of inheritance and by class name on the same level"
	| subcls |
	aCollection add: self.
	subcls := SortedCollection withAll: self subclasses
				sortBlock: [:a :b | a name < b name].
	subcls do: [:subclass | subclass allWebAppClassesTo: aCollection]