model posting
acceptFormInputFrom: anEventOrRequest
 	"read a post data from request or WebEvent and write values to the valueModels of fields in a form.
	For checkboxes and radiobuttons, a set of values is expected under the same name"
	| postData value |
	postData := HTTPPostDataArray new. "like Dictionary, but multiple values per key"
	self uncheckAllProperChecboxesFor: anEventOrRequest. 
	self uncheckAllProperRadioButtonsFor: anEventOrRequest.
	anEventOrRequest  postKeysAndValuesDo: [:key :vlue | postData at: key put: vlue].
	self allFieldsIncludingSubforms do: [:field | 
		(postData includesKey: field name) ifTrue:
			[value := postData at: field name.
			field isMenu 
				ifTrue: [field acceptFormInputFrom: postData]
				ifFalse: [	field isFileInputField 
					ifTrue: 
						[field isStreamed ifFalse: [field value: (postData at: field name)] "streamed already read". 
						field acceptFileAttributesFrom: anEventOrRequest field: field name]
					ifFalse: [field acceptInputFromValue: value] ] "all other form elements"
			] 
		]