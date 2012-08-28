private-ajax
onFormChangeDo: aBlock
	"run a block with changed field as argument immedatelly after field change is Ajax detected"
	self announcers add: aBlock