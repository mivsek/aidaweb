styles-screen
css1Body
^'
body {
	margin: 0;
	padding: 0;
	font-family: verdana, sans-serif;
	font-color: #666;
/*	font-size: 90%; */
	font-size: 11pt;
	line-height: 1.2em;
	background: #fff url("/img/leftstripegif.gif") repeat-y;
	}
#container {
	position: relative;
	width: 800px;
	margin: 0 0 0 8px;
	padding: 0;
	}
#containerPadded {    /* for printing header, has no efect here */
	position: relative;
	width: 800px;
	margin: 0 0 0 8px;
	padding: 0;
	}
#content {
	margin: 10px 15px 10px 10px;
	padding-top: 20px;
	font-size: 90%;
	text-align: left;
	margin-top/* */: 0; /* IE5.0 Win wont see this - fixes weird float bug for hp */
	}
html>body #content  {
	margin-top: 0;
	}
#content {
	margin-left: 135px;
	padding-left: 0;
	}

/* through all width of page, in navigation space too */
#contentWide {
	margin: 10px 15px 10px 10px;
	padding-top: 20px;
	font-size: 90%;
	text-align: left;
	margin-top/* */: 0; /* IE5.0 Win wont see this - fixes weird float bug for hp */
	}
'