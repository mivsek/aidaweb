WebRouter routes a web request to the appropriate resource (handler), which can be a domain object which is able to represent itself on the web (via URLResolver), or a static file (via FileProxy) or anything else. Router's main method is #resourceFor: aRequest, which returns a resource able to handle that request or nil in case no resource was found.

It contains an ordered collection of routes, which are checked in the sequence until response not nil.
Each route is an association of url pattern and a reference to a handler. Default route is for instance:

	'/*' -> anURLResolver

Url pattern is simply a Smalltalk #match: method criteria, matched over there relative Url of web request.

