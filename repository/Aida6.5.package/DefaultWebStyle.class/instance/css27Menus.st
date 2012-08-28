styles-screen
css27Menus
	"AnyLink dropdown and popit menus"
	"http://www.dynamicdrive.com/dynamicindex1/dropmenuindex.htm"
^'
#dropmenudiv{
	position:absolute;
	background-color: white;
	border:1px solid black;
	border-bottom-width: 0;
	font:normal 12px Verdana;
	line-height:18px;
	z-index:100;
}
#dropmenudiv a{
	width: 100%;
	display: block;
	text-indent: 3px;
	border-bottom: 1px solid black;
	padding: 1px 0;
	text-decoration: none;
}

#dropmenudiv a:hover{ /*hover background color*/
	background-color: #CCFF9D;
}
#popitmenu {
	position: absolute;
	background-color: white;
	border:1px solid black;
	font: normal 12px Verdana;
	line-height: 18px;
	z-index: 100;
	visibility: hidden;
}
#popitmenu a {
	text-decoration: none;
	padding-left: 6px;
	color: black;
	display: block;
}
#popitmenu a:hover{ /*hover background color*/
	background-color: #CCFF9D;
}
'