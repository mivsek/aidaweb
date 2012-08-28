private-serving
addUACompatibleHeaderTo: aHTTPResponse
	"For stupid Microsoft's IE8 to avoid users manually check Page->Compatibility view"
	aHTTPResponse addHeaderName: 'X-UA-Compatible' value: 'IE=EmulateIE7'