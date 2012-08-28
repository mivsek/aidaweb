private-composing
composeWebPageStepTwoFor: aRequest 
	| toLogin |
	self observee isMultilingual 
		ifTrue: [self checkObserveeLanguageFor: aRequest ].  "and change observee if needed"
	self isObserveeVersioned 
		ifTrue: [self checkObserveeVersionFor: aRequest ]. "and change observee if needed"
	toLogin := false. "self isEncryptionSatisfied ifTrue: [toLogin := true]."
	(aRequest  isPost and: [aRequest  isAjaxRequest not]) ifTrue: 
		[(self updateAllowed: aRequest context view) 
			ifTrue: [self acceptInputsAndActionFrom: aRequest] ifFalse: [toLogin := true] ].
	toLogin ifTrue:
		[(self observee == self site admin and: [self session newView = 'login']) 
			ifFalse: [self redirectTo: self site admin view: #login].
		^WebPage new].
	self session lastApp: self. "!!!"
 	aRequest isAjaxRequest ifTrue: [^self respondToAjaxRequest: aRequest].
	self session shouldRedirect ifTrue: [^WebPage new].
	self setProcessFromTaskId. "for BPM engine, if present"
	^self composeWebView: aRequest context view for: aRequest.