instance creation
newCometOn: aWebRealtimeHandler from: aRequest
	^super new
		type: #comet;
		handler: aWebRealtimeHandler;
		setCometFrom: aRequest