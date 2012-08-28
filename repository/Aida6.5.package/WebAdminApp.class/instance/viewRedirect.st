views
viewRedirect
	| e url |
	self title: 'Restarting a site'.
	e := WebElement new.
	e addText: 'Restarting a site with new settings ...'.
	url := 'http://', self observee host, ':', self observee port printString, '/admin.html?view=settings'.
" this don't work on mozilla!
	self redirectAfter: 2 toUrl: url.
"
self script: ('<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
redirTime = "2000";
redirURL = "', url, '";
function redirTimer() { self.setTimeout("self.location.href = redirURL;",redirTime); }
//  End -->
</script>').

	self attributesAt: #onLoad put: 'redirTimer()'.
	^self style pageFrameWith: e title: self title .