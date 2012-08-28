instance creation
newFromJSON: aString
	| html5Position coords location |
	html5Position := WebJSON parse: aString.
	coords := html5Position at: 'coords'.
	location := self new.
	location 
		latitude: (coords at: 'latitude');
		longitude: (coords at: 'longitude');
		accuracy: (coords at: 'accuracy');
		altitude: (coords at: 'altitude' ifAbsent: [nil]);
		altitudeAccuracy: (coords at: 'altitudeAccuracy' ifAbsent: [nil]);
		speed: (coords at: 'speed' ifAbsent: [nil]);
		heading: (coords at: 'heading' ifAbsent: [nil]);
		timestamp: SpTimestamp now "(SpTimestamp fromUTCString: (html5Position at: 'timestamp'))".
	^location