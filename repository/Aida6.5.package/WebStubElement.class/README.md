WebStubElement is an element which will be replaced with a real one after Ajax update

Example:
	u := WebStubElement newFor: #ajaxShowElement.
	(e addNilLinkText: 'update') onClickUpdate: u.
	e add: u.
	
This will show the element at the click to link by updating the empty stub element.