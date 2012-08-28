styles-screen
cssTabs2
	^'
/*WebTabs newClass: #tabs2 but dont forget to define here class tabs2selected too ! */

ul.tabs2 {
	height: 20px;
	margin: 0;
	padding-left: 10px;
	background: url("/img/tab2bottomgif.gif") repeat-x bottom;
	}
ul.tabs2, ul.tabs2 li {
	margin: 0;
	padding: 0;
	display: inline;
	list-style-type: none;
	}
ul.tabs2 a:link, ul.tabs2 a:visited, ul.tabs2 b {
	float: left;
	background: #f3f3f3;
	font-size: 10px;
	line-height: 14px;
	font-weight: bold;
	padding: 2px 10px 2px 10px;
	margin-right: 4px;
	border: 1px solid #ccc;
	text-decoration: none;
	color: #666;
	}
ul.tabs2 a:hover {
	background: #fff;
	}
ul.tabs2 li.tabs2selected b {
	border-bottom: 1px solid #fff;
	background: #fff;
	color: #000;
	}
'