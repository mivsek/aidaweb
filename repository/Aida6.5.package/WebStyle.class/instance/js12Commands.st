scripts
js12Commands
	"Sending and receiving JSON commands"
	^'
function aidaExtractScripts(html) {
// based on PrototypeJs
    var ScriptFragment = "<script[^>]*>([\\S\\s]*?)<\/script>";
    var matchAll = new RegExp(ScriptFragment, "img");
    var matchOne = new RegExp(ScriptFragment, "im");
    return (html.match(matchAll) || []).map(function(scriptTag) {
      return (scriptTag.match(matchOne) || ['', ''])[1];
    });
}
function aidaEvalScripts(html) {
    return aidaExtractScripts(html).map(function(script) { return eval(script) });
}
function aidaUpdate (id, content) {
	if (document.getElementById(id)) {
		document.getElementById(id).innerHTML = content;
		aidaEvalScripts(content);
	}
}
function aidaLoad (url) {
	window.location = url;
}
function aidaExecute(cmd) {
	switch (cmd.command) {
		case "update": 
			aidaUpdate(cmd.id, cmd.value);
			break;
		case "load": 
			aidaLoad(cmd.value);
			break;
	}
}

'