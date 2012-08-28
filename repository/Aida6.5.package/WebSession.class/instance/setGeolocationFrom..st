private-serving
setGeolocationFrom: aRequest
	| location |
	location := WebGeolocation newFromJSON: (aRequest ensureFullRead; entityBody).
	self geolocation: location.