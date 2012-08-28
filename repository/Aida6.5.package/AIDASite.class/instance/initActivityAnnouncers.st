initialize-release
initActivityAnnouncers
	"whom to announce activity on that site. A dictionary with an app as key, another
	dict with element id as key and a block to execute"
	^self otherAt: #activityAnnouncers put: Dictionary new