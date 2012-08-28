accessing
baseUrl
	BaseUrl ifNil: [self baseUrl: '/tinymce'].
	^BaseUrl