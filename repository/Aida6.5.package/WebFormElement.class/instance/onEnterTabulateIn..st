events
onEnterTabulateIn: aWidgetOrApp
	"Prototype specific"
	"It goes to the next element in tabulation order"
	"This allows ENTER key to be used for tabulation, like a TAB. "
	"Because widgets are nested, you can specify more exactly in which widget's form to tabulate"
	ScriptaculousLibrary ensurePrototype.
	self enterTabForm: aWidgetOrApp form. "to make tabulation script late, just before htmlPrint"