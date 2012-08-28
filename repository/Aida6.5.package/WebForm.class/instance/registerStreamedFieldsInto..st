model adapting
registerStreamedFieldsInto: aHTTPPost
	"for streams it needs to be done before you use any post data, otherwise it is too late!"
	self streamedFieldSet do: [:field | 
		field writeBlock notNil 
			ifTrue: [aHTTPPost postDataAt: field name beforeStreamingDo: field writeBlock].
		field writeStream notNil 
			ifTrue: [aHTTPPost postDataAt: field name streamTo: field writeStream] ]