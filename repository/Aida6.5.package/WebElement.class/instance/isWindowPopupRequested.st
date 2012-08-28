private-events
isWindowPopupRequested
	"click on this element requested a popup"
	^self otherAt: #WindowPopupRequested ifAbsent: [false]