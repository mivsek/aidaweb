private-serving
httpResponseOnException: anException
	| response |
	response := HTTPResponse internalServerError.
	response entity: '
<HTML>
<HEAD><TITLE>', response statusText, '</TITLE></HEAD>
  <BODY>
   <H2>', response statusLine, '</H2>
   <P>The server experienced an error while processing this request. <BR>
   If this problem persists, please contact the webmaster.</P>
  <P>Error description:</P>
  <P>', anException messageText, '</P>
  <P>Stack:</P>
  <P>', 
	((DebuggerService shortStackFor: anException initialContext ofSize: 30
		"on: Error do: [:ex | ex messageText]")
			copyReplaceAll: (String with: Character cr) with: '<BR>')
, '</P>
  </BODY>
</HTML>'.
	^response