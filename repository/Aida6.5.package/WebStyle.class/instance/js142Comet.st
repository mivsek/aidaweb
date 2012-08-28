scripts
js142Comet
	"Comet support - if WebSocket not supported then long-polling Ajax is used for realtime"
	^'
function aidaOpenComet() {  
	console.log("comet?");
	if (!window.WebSocket) {  // otherwise WebSocket should already be open
		console.log("comet open");
		xhrc = new XMLHttpRequest;
		xhrc.onreadystatechange = function() {
			if (xhrc.readyState == 4) {
				var cmds = JSON.parse(xhr.responseText);
				for (var i=0; i < cmds.length; i++) {
					aidaExecute(cmds[i]);
				};
			};
			aidaOpenComet(); // immediatelly open again. Recursivelly, is this ok?
		};
		xhrc.open("get", 
			"/aidasession/comet?pageurl=" + window.location.pathname + window.location.search, true); 
		xhrc.send(null);  
	};
};
'