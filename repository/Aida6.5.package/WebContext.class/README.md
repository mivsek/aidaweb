WebContext holds an execution context for a web request. Contexts can be linked in a stack like structure for tree-like control flow (like a confirmation dialog as popup of some delete action)

Instance Variables
	id		<Integer>	unique id of the context inside one App instance
	parent	<WebContext or WebApplication>	parent in context chain
	child	<WebContext> chils in context chain, if any
	form		<WebForm>	a web form with input fields of this context
	ids		<Dictionary>	 the elements which have id defined, for fast access to them from AJAX requests"
	nextId   <Integer>     number for a next element's id
