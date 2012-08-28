private-views
deactivateView: aSymbol
	self activeViews remove: aSymbol ifAbsent: [].
	self session realtimeHandler cleanup "to remove realtime connections on just closed page"