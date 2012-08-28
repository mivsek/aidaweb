scripts
js15Forms
	"serialization of form data"
	^'
function aidaSerializeForm(formId) {
	elements = document.getElementById(formId).getElementsByTagName("*");
	result = "";
	for (var i=0; i < elements.length; i++) {
		var e = elements[i];
		if (!e.disabled && e.name && e.name.length > 0) {
			switch (e.tagName.toLowerCase()) {
				case "input":
					switch (e.type) {
						case "checkbox":
						case "radio":
							if (e.checked) {
								if (result.length > 0) { 	result += "&"; };
								result += e.name + "=" + encodeURIComponent(e.value);
							};
							break;
						case "hidden":
						case "password":
						case "text":
							if (result.length > 0 ) { result += "&"; };
							result += e.name + "=" + encodeURIComponent(e.value);
							break;
					}
					break;
					case "select":
						case "textarea":
							if (result.length > 0 ) { result += "&"; };
							result += e.name + "=" + encodeURIComponent(e.value);
							break;
			} 
		}
	}
    return result;
};
'