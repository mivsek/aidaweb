private-events
shallQueue
	"in #update, shall new element be queued for sending to browser immediatelly or later. For popups 
	it is queued after element is wrapped in popup window, see WebApplication>>handleEvent: "
	^self otherAt: #ShallQueue ifAbsent: [true]