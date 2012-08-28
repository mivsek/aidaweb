scripts
js16Geolocation
	"reporting location of browser. Every hour or after every location change"
	^'
function aidaLocationReport() {
	if(navigator.geolocation) {
		navigator.geolocation.watchPosition(aidaUpdateLocation, aidaHandleLocationError, {maximumAge:5000} );
	}
};
function aidaUpdateLocation(position) {
	xhr = new XMLHttpRequest;
	xhr.open("post", "/aidasession/geolocation", true); 
	xhr.send(JSON.stringify(position));
};
function aidaHandleLocationError(error) {
};
'