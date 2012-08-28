scripts
js13Events
	"sending events (like onClick) via Ajax or WebSocket channel"
	^'
function aidaEvent(event, elementId, context, value) {
	var msg = {"event": event, "id": elementId, 
		"pageUrl": window.location.href, "context": context, "value": value};
	if (aidaWebSocket) {
		aidaWebSocket.send(JSON.stringify(msg));
		return;
	}
	xhr = new XMLHttpRequest;
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			var cmds = JSON.parse(xhr.responseText);
			for (var i=0; i < cmds.length; i++) {
				aidaExecute(cmds[i]);
			}
		}
	};
	xhr.open("post", "/aidasession/ajax", true); 
	xhr.send(JSON.stringify(msg));
};
// event send delayed since the last occurence of that event
function aidaDelayedEvent(event, elementId, context, value, delay) {
	var e = document.getElementById(elementId);
	if (e.timeoutId) { clearTimeout(e.timeoutId); };
	e.timeoutId = setTimeout(function() {aidaEvent(event, elementId, context, value)}, delay);
};
function aidaJsonReport() {   // report that JSON support exists in user browser
	if (window.JSON) {
		aidaEvent("jsonExists", document.getElementsByTagName("body")[0].id, null, null);
	}
};
function aidaUnloadReport() {   // report as event the page close, going to another page,...
	aidaEvent("unload", document.getElementsByTagName("body")[0].id, null, null);
};
function aidaNewTabReport() {   // if new tab or window opened
	if (window.sessionStorage) {
		if ( !window.sessionStorage.aidaTabRecognised) {
			aidaEvent("newtab", null, null, null);
			window.sessionStorage.aidaTabRecognised = true;
		}
	}
};

function blockEnter(event) // prevent Enter key to submit a form
{
   if(event && event.keyCode == 13)
   {
      return false;
   }
};

'