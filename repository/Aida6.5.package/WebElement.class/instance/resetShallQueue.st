private-events
resetShallQueue
	"in #update, shall new element be queued for sendng to browser immediatelly or later. For popups 
	it is queued after element is wrapped in popup window, see WebApplication>>handleEvent: "
	^self otherAt: #ShallQueue put: false