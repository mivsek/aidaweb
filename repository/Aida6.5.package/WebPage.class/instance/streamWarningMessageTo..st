private-streaming
streamWarningMessageTo: aStream
	self warningMessage isNil ifTrue: [^nil].
	aStream nextPutAll: '
<div align="center" style="background-color: red">
  <br>
  ', self warningMessage, '
  <br>
  <hr>
</div>
'