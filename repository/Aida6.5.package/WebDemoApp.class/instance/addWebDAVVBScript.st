views
addWebDAVVBScript
	"to open directly from web and not copy a document in local cache"
	self context page scriptBefore: '
 <SCRIPT LANGUAGE=VBScript>
   Function OpenDoc(strLocation)
   Dim objWord
      Set objWord = CreateObject("Word.Application")
      objWord.Visible = true
      objWord.Documents.Open strLocation
   End Function
 </SCRIPT>
'