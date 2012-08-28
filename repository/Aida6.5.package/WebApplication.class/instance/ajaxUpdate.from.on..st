private-obsolete
ajaxUpdate: anOldElement from: anElementToRecreate on: aRequest
	"prepare to update (recreate or refresh) that element by returning a recreated one"
	| new different |
	anOldElement isNil ifTrue:  [^WebElement new]. "only arguments/command was sent. Process it before! "
	anElementToRecreate isNil ifTrue: [^WebElement new]. "can happen after window/context closing"
	anElementToRecreate creationMethod isNil ifTrue: [^anOldElement]. "in form elements it will return new value!"
	aRequest context afterCloseUpdate:  anElementToRecreate afterCloseUpdate "element to update, if any".
	different := (anOldElement == anElementToRecreate) not.  "content will be from element different that old one"
	different not ifTrue:     "only when content will be from the old element. "
		[aRequest context announceReplacementWith: anOldElement]. "for reset see WebElement class>>new"
	new := anOldElement isWebWidget
		ifTrue: [self ajaxUpdateWidget: anOldElement from: anElementToRecreate on: aRequest]
		ifFalse: [(anElementToRecreate creationObject notNil 
				and: [anElementToRecreate creationObject isWebWidget]) 
			ifTrue: [self ajaxUpdateWidgetElement: anOldElement from: anElementToRecreate on: aRequest] 
			ifFalse: [self ajaxUpdateAppElement: anOldElement from: anElementToRecreate on: aRequest] ].
	aRequest context cancelReplacement. "if any"
	^new