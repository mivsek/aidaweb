events
onEnterTabulate
	"Prototype specific"
	"It goes to the next element in tabulation order"
	"This allows ENTER key to be used for tabulation, like a TAB. "
	ScriptaculousLibrary ensurePrototype.
	self enterTabForm: self form. "to make tabulation script late, just before htmlPrint"