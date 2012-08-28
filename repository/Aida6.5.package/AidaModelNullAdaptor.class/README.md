AIDAModelNullAdaptor adapts actually nothing just holds the value. This is a default adaptor in form element if no one is set. Usefull for preparing forms in advance, without connecting to domain model.

Example adding a hidden field:

	e add: (WebInputField new setHidden; name: 'MyHiddenField'; value: '12345')