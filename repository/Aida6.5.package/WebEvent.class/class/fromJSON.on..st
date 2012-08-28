instance creation
fromJSON: aJSONString on: aSession
	^super new
		fromJSON: aJSONString;
		reconnectOn: aSession