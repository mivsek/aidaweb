resources
examplesMyprojectIndexHtml
^'<html>
<head>
<title>My Project</title>
<script src="../../js/amber.js" type="text/javascript"></script>
</head>
<body>
<script type="text/javascript"> 
	loadAmber({
		files: [''Banana.js''],
		prefix: ''examples/myproject/js'',
		ready: function() {
			smalltalk.Browser._open();
		}}); 
</script>
</body>
</html>
'