scripts
js141WebSocket
	"WebSocket realtime support - opening it, receiving messages etc."

	^'
var aidaWebSocket;    // global variable

function aidaProcessRealtimeMsg (event) {  // also for Comet
//	console.log(event.data);
	var cmds = JSON.parse(event.data);
	for (var i=0; i < cmds.length; i++) {
		aidaExecute(cmds[i]);
	}
}
function aidaOpenWebSocket() {   // call it at first page load
	if (window.WebSocket) {
		url = "ws://" + window.location.host + "/aidasession/websocket?pageurl=";
		url = url + window.location.pathname + window.location.search;
	    	aidaWebSocket = new WebSocket(url);
		aidaWebSocket.onmessage = aidaProcessRealtimeMsg;
		aidaWebSocket.onclose = function(event) {
			console.log("WebSocket closed, reopening..."); 
			setTimeout(function() {aidaOpenWebSocket()}, 1000);  // reopen with delay
		};
		console.log("WebSocket open");
	} else { 
		console.log("WebSocket not supported"); 
	}
};
'