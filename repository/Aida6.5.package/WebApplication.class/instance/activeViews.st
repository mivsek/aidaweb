private-views
activeViews
	"views which have currently open pages on user's browser"
	^self otherAt: #activeViews ifAbsent: [self initActiveViews]