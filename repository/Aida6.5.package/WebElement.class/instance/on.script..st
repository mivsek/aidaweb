events
on: anEventSymbol script: aJavascriptCode
	" on #click, #keyPress etc add a scecified script"
	"possible events (but you can add:
	#click #dblClick 
	#keyPress #keyDown #keyUp
	#mouseUp #mouseDown #mouseMove #mouseOut #mouseOver
	"
	self 
		attributesAt: ('on', anEventSymbol asString asUppercase) asSymbol 
		add: aJavascriptCode