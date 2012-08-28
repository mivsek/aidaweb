initialize-release
initForm
	"WebForm is a first element in a widget  and all adds go to this form and not direclty to the widget! "
	(self elements add: (WebForm new parent: self))
		registerId