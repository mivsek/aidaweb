serving
answer: anObject toPropFind: aRequest on: aWebSession
	"WebDAV properties request from object"
	|  multiResponse |
	"Temporary!! Now it just return empty collection, which is enough for MS web folders to add new! "
	multiResponse := Swazoo.HTTPPropFindResponse new.
	multiResponse multiStart.
	multiResponse startResponseFor: aRequest uri value.
	multiResponse addPropertyName: 'getlastmodified' value: 'Mon, 21 Feb 2005 14:11:01 GMT'.
	aRequest uri value last = $/ ifTrue: "directory"
		[multiResponse addPropertyName: 'resourcetype' value: #collection].
	multiResponse endResponseWithStatusCode: 200.
	multiResponse multiEnd.
	^multiResponse