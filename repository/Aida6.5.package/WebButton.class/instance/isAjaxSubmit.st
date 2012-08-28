testing
isAjaxSubmit
	"this button will submit a form with Ajax request and a page will not be reloaded"
	^(self otherAt: #AjaxSubmit) = true