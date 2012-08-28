events
onSubmit: aJavascriptCode
	"many calls will add a JS code to the exisitng one!"
	self attributesAt: #onSubmit add: aJavascriptCode