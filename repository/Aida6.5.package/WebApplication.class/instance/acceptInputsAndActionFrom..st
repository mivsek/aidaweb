private-form posting
acceptInputsAndActionFrom: aRequest
	|  form |
	form := self formPostedFrom: aRequest.
	form acceptInputsFrom: aRequest.
	self callActionFrom: aRequest. "if any"