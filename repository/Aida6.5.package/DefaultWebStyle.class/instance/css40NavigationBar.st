styles-screen
css40NavigationBar
	^'
#navigation {
	position: absolute;
	width: 120px;
	top: 135px;
	margin-right: 0;
	font-size: 80%;
	color: #333;
	left: 8px; /* fixes weird IE5.0/win absolute position within relative */
	left/* */: 0;
	background: #F0F0E7 url("/img/leftcornergif.gif") no-repeat top right;
	}
html>body #navigation  {
	left: 0;
	}
#navigation div {
	padding: 10px;
	font-size: 100%;
	border-bottom: 1px solid #fff;
	}
#navigation div div {
	padding: 0;
	}
#navigation .boxGrey {
	background: #fff;
	}
#navigation h3 {
	padding: 0;
	margin: 0;
	margin-bottom: 6px;
	font-family: verdana, sans-serif;
	font-size: 100%;
	font-weight: bold;
	letter-spacing: 0;
	color: #AAA799;
      padding-top: 0;
      border-bottom: 0;
	}
#navigation h3 img {
	vertical-align: middle;
	display: inline;
	background: #AAA799;
	}
#navigation p {
	margin: 3px 0 0 0;
	line-height: 1.2em;
	}
#navigation ul, .styledBox ul {
	margin: 0;
	padding: 0;
	list-style: none;
	}
#navigation li, .styledBox li {
	background: url("/img/bulletsquareleftwhitegif.gif") no-repeat 0 1px;
	padding: 0 0 6px 16px;
	line-height: 1em;
	}
button {
	visibility: visible;
	border: 1px solid #ccc;
	background: #f5f5f5;
	color: #666;
	vertical-align: middle;
	padding: 2px;
}
'