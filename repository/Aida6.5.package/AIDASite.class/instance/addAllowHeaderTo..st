private-serving
addAllowHeaderTo: aHTTPResponse
	| methods |
	methods := 'OPTIONS,GET,HEAD,POST,DELETE,TRACE,'.
	methods := methods, 'PROPFIND,PROPPATCH,MKCOL,PUT,COPY,MOVE,LOCK,UNLOCK'.
	aHTTPResponse addHeaderName: 'Allow' value: methods