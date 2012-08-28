*Aida
isAjaxRequest
	"Asynchronous JavaScript (AJAX) request, it has additional parameter ajaxRequest"
	^(self headerAt: 'X-Requested-With' ifAbsent: [^false]) value = 'XMLHttpRequest'