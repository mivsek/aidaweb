private-testing
wasFilterChangedFor: aWebGridColumn on: anInputField
	| request vlue |
	request := self app session lastRequest.
	(request isAjaxRequest and: [request isPost]) ifFalse: [^false].
	request postKeysAndValuesDo: [:key :value |
		(('field', '*') match: key) ifTrue: [vlue := value] ].
	^vlue = aWebGridColumn filter