initialize-release
cleanup
	"remove all realtime connections with closed apps or views, etc."
	self isRealtimeChannelOpen ifFalse: [^nil].
	self connections copy do: [:conn | conn removeIfNonactive]