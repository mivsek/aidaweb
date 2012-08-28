views-ajax
ajaxLiveAndDelayedFieldExampleTo: e
	| element1 input1 element2 input2 |
	e cell colspan: 2; addTextH4: 'Example: Live and Delayed input send to server'. e newRow.
	element1 := self ajaxLiveFieldElement.
	input1 := WebInputField aspect: #input for: self observee.
	input1 onKeyUpPostAndUpdate: element1.
	e cell width: 0.5; add: input1; addBreak; add: element1.
	element2 := self ajaxDelayedFieldElement.
	input2 := WebDelayedField aspect: #delayedInput for: self observee.
	input2 onChangePostAndUpdate: element2.
	e newCell add: input2; addBreak; add: element2.
	^e