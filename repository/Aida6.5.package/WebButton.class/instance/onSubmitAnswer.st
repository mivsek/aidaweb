private-ajax
onSubmitAnswer
	"Answer when button is clicked and form submitted.Answer to the currenty executing context"
	"Part of tree-like control flow, see WebDemoApp for example "
	^self otherAt: #OnSubmitAnswer ifAbsent: [nil]