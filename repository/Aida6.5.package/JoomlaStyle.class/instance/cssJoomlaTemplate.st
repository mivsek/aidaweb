styles-screen
cssJoomlaTemplate
	^'
/* Joomla mitra template */

html {
	height: 100%;
}

body {
	height: 100%;
	margin: 3px 3px 3px 3px;
}
.clr {
	clear: both;
}
table.main{
	width:758px;
}
.outline {
  border: 1px solid #cccccc;
  background: #ffffff;
	padding: 2px;
}

#buttons_outer {
	width: 635px;
  	margin-bottom: 2px;
	margin-right: 2px;
	float: left;

}

#buttons_inner {
	border: 1px solid #cccccc;
	height: 21px;
}

#pathway_text {
  overflow: hidden;
	display: block;
	height: 25px;
	line-height: 25px !important;
	line-height: 22px;
	padding-left: 4px;
	border: 1px solid #008C00;
	margin-bottom: 2px;
}

#pathway_text img {
	margin-left: 5px;
	margin-right: 5px;
	margin-top: 6px;
}

#buttons {
	float: left;
	margin: 0px;
	padding: 0px;
	width: auto;
}


ul#mainlevel-nav
{
	list-style: none;
	padding: 0;
	margin: 0;
	font-size: 0.8em;
}

ul#mainlevel-nav li
{
	background-image: none;
	padding-left: 4px;
	padding-right: 0px;
	float: left;
	font-size: 11px;
	line-height: 22px;
	white-space: nowrap;
	background-image:url(/img/topLinkPng.png);
	background-repeat:no-repeat;
	background-position:right top;
	height:22px;
}

ul#mainlevel-nav li a
{
	display: block;
	padding-left: 15px;
	padding-right: 15px;
	text-decoration: none;
	color:#FFFFFF;
	background: transparent;
}

#buttons>ul#mainlevel-nav li a { width: auto; }

	ul#mainlevel-nav li a:hover
{
	color:#00FF66;
}


#search_outer {
	float: left;
	width: 165px;
}

#search_inner {
  border: 1px solid #cccccc;
	padding: 0px;
  height: 21px !important;
  height: 23px;
  overflow: hidden;
}

#search_inner form {
  padding: 0;
  margin: 0;
}

#search_inner .inputbox {
	border: 0px;
	padding: 3px 3px 3px 5px;
	font-family: arial, helvetica, sans-serif;
	font-size: 11px;
	color: #008C00;
}

#header_outer {
	text-align: left;
	border: 0px;
	margin: 0px;
}

#header {
	float: left;
	padding: 0px;
	margin-right: 2px;
	width: 635px;
	height: 150px;
	background: url(/img/headerShortJpg.jpg) no-repeat;
}

#top_outer{
	float: left;
	width: 165px;
}

#top_inner {
  border: 1px solid #cccccc;
	padding: 2px;
  height: 144px !important;
  height: 150px;
  overflow: hidden;
  float: none !important;
  float: left;
}

#left_outer {
  float: left;
	margin-top: 2px;
	width: 165px;
}

#left_inner {
  border: 1px solid #cccccc;
	padding: 2px;
  float: none !important;
  float: left;
}

#content_outer {
	padding: 0px;
	margin-top: 0px;
	margin-left: 2px;
	/** border: 1px solid #cccccc; **/
	float: left;
	width: 635px;
}

#content_inner{
  float: none !important;
  float: left;
  padding: 0;
  padding-top: 2px;
  margin: 0;
}

table.content_table {
  width: 100%;
	padding: 0px;
	margin: 0px;
}

table.content_table td {
	padding: 0px;
	margin: 0px;
}


#banner_inner {
	float: left;
	padding: 0px;
	height: 70px;
}

#poweredby_inner {
	float: right;
	padding: 0px;
	margin-left: 0px;
	height: 70px;
}

#right_outer {
	margin-left: 2px;
	width: 165px;
}

#right_inner {
  float: none !important;
  float: left;
  border: 1px solid #cccccc;
  padding: 2px;
}


.user1_inner {
	border: 1px solid #cccccc;
  float: none !important;
  float: left;
	margin: 0px;
	padding: 2px;
}

.user2_inner {
	border: 1px solid #cccccc;
  float: none !important;
  float: left;
	margin: 0px;
	padding: 2px;
}

table td.body_outer {
	padding: 2px;
	border: 1px solid #cccccc;
}

.maintitle {
	color: #ffffff;
	font-size: 40px;
	padding-left: 15px;
	padding-top: 20px;
}

.error {
  font-style: italic;
  text-transform: uppercase;
  padding: 5px;
  color: #cccccc;
  font-size: 14px;
  font-weight: bold;
}

/** old stuff **/

div.back_button {
	float: left;
  text-align: center;
  font-size: 11px;
  font-weight: bold;
  border: 1px double #cccccc;
  width: auto;
  background: url(/img/bacBtnPng.png) repeat-x;
  padding: 0px 10px;
  line-height: 20px;
  margin: 1px;
  color:#006600;
}

.pagenav {
  text-align: center;
  font-size: 11px;
  font-weight: bold;
  border: 1px double #cccccc;
  width: auto;
  padding: 0px 10px;
  line-height: 20px;
  margin: 1px;
  color:#006600;
}

.pagenavbar {
	margin-right: 10px;
	float: right;
}

#footer {
	text-align: center;
	padding: 3px;
}

ul
{
margin: 0;
padding: 0;
list-style: none;
}

li
{
line-height: 15px;
padding-left: 15px;
padding-top: 0px;
background-image: url(/img/arrowPng.png);
background-repeat: no-repeat;
background-position: 0px 2px;
}


td {
	text-align: left;
	font-size: 11px;
}



body {
	padding: 0px;
	font-family: Arial, Helvetica, Sans Serif;
	line-height: 120%;
	font-size: 11px;
	color:#666666;
}

/* Joomla core stuff */
a:link, a:visited {
	color: #008C00; text-decoration: none;
	font-weight: bold;
}

a:hover {
	color:#008C00;	text-decoration: none;
	font-weight: bold;
}

table.contentpaneopen {
  width: 100%;
	border-collapse: collapse;
	border-spacing: 0px;
	margin: 0px;
}

table.contentpaneopen td {
   padding-right: 5px;

}

table.contentpaneopen td.componentheading {
	padding-left: 4px;
	
}



table.contentpane {
  width: 100%;
	padding: 0px;
	border-collapse: collapse;
	border-spacing: 0px;
	margin: 0px;
}

table.contentpane td {
	margin: 0px;
	padding: 0px;
}

table.contentpane td.componentheading {
	padding-left: 4px;
}

table.contentpaneopen fieldset {
	border: 0px;
	border-bottom: 1px solid #eee;
}

.button {
  color:#006600;
  font-family: verdana, Hevlvetica, sans-serif;
  text-align: center;
  font-size: 11px;
  font-weight: bold;
  border: 1px double #cccccc;
  width: auto;
  background: url(/img/buttonBgPng.png) repeat-x;
  background-position:bottom;
  padding: 0px 5px;
  line-height: 18px !important;
  line-height: 16px;
  height: 26px !important;
  height: 24px;
  margin: 1px;
}

.inputbox {
	padding: 2px;
	border:solid 1px #cccccc;
	background-color: #ffffff;
}

.componentheading {
	color: #008C00;
	text-align: left;
	padding-top: 13px;
	padding-left:10px;
	height: 22px;
	font-size: 18px;
	font-family:"Times New Roman", Times, serif;
	background-image:url(/img/bacContentPng.png);
	background-repeat:no-repeat;
	background-position:bottom left;

}

.contentcolumn {
	padding-right: 5px;
}

.contentheading {
	text-align: left;
	padding-top: 13px;
	padding-left:10px;
	height: 25px;
	color: #008C00;
	font-weight: bold;
	font-size: 13px;
	background-image:url(/img/bacContentPng.png);
	background-repeat:no-repeat;
	background-position:bottom left;
	padding-bottom:4px !important;
	padding-bottom:0px;
}



.contentpagetitle {
	font-size: 13px;
	font-weight: bold;
	color: #cccccc;
	text-align:left;
}

table.searchinto {
	width: 100%;
}

table.searchintro td {
	font-weight: bold;
}

table.moduletable {
	width: 100%;
	margin-bottom: 5px;
	padding: 0px;
	border-spacing: 0px;
	border-collapse: collapse;
}

div.moduletable {
	margin-bottom: 0px;
	background-image:url(/img/botModPng.png);
	background-position:bottom;
	background-repeat:no-repeat;
	padding-bottom:20px;
	padding-left:7px;
}

table.moduletable th, div.moduletable h3 {
	background: url(/img/topModPng.png) no-repeat;
	background-position:bottom;
	color: #FFFFFF;
	text-align: left;
	padding-left: 12px;
	height: 34px;
	line-height: 34px;
	font-weight: bold;
	font-size: 12px;
	font-family:Verdana, Arial, Helvetica, sans-serif;
	margin-top:0px;
	margin-left:-7px;
	margin-bottom:0px;
}
table.moduletable td {
	font-size: 11px;
	margin: 0px;
	font-weight: normal;
}

table.pollstableborder {
  padding: 2px;
  width:96%;
}
moduletable-Banners {
	text-align:center;
}
.sectiontableheader {
  font-weight: bold;
  background-color:#CCCCCC;
  padding: 4px;
}

.sectiontablefooter {

}

.sectiontableentry1 {
	background-color:#EFEFEF;
}

.sectiontableentry2 {
	background-color:#F4F4F4;
}

.small {
	color: #008C00;
	font-size: 11px;
}

.createdate {
	height: 15px;
	padding-bottom: 10px;
	color: #999999;
	font-size: 11px;
}

.modifydate {
	height: 15px;
	padding-top: 10px;
	color: #999999;
	font-size: 11px;
}

table.contenttoc {
  border: 1px solid #cccccc;
  padding: 2px;
  margin-left: 2px;
  margin-bottom: 2px;
}

table.contenttoc td {
  padding: 2px;
}

table.contenttoc th {
  color: #008C00;
	text-align: left;
	padding-top: 2px;
	padding-left: 4px;
	height: 21px;
	font-weight: bold;
	font-size: 10px;
	text-transform: uppercase;
}

a.mainlevel:link, a.mainlevel:visited {
	display: block;
	background: url(/img/menuBgPng.png) no-repeat;
	vertical-align: middle;
	font-size: 11px;
	font-weight: bold;
	color:#008C00;
	text-align: left;
	padding-top: 5px;
	padding-left: 15px;
	height: 21px !important;
	height: 26px;
	width: 100%;
	text-decoration: none;
}

a.mainlevel:hover {
	background-position: 0px -32px;
	text-decoration: none;
	color:#999999;
	text-align:left !important;
	padding-right:20px;
}

a.mainlevel#active_menu {
	color:#FF0000;
	font-weight: bold;
	font-size:13px;
}

a.mainlevel#active_menu:hover {
	color: #999999;
}

a.sublevel:link, a.sublevel:visited {
	padding-left: 1px;
	vertical-align: middle;
	font-size: 11px;
	font-weight: bold;
	color: #008C00;
	text-align: left;
}

a.sublevel:hover {
	color: #008C00;
	text-decoration: none;
}

a.sublevel#active_menu {
	color: #333;
}

.highlight {
	background-color: Yellow;
	color: Blue;
	padding: 0;
}
.code {
	background-color: #ddd;
	border: 1px solid #bbb;
}

form {
/* removes space below form elements */
	margin: 0;
 	padding: 0;
	width:98%;
}

div.mosimage {
  border: 1px solid #cccccc;
}

.mosimage {
  border: 1px solid #cccccc;
  margin: 5px
}

.mosimage_caption {
  margin-top: 2px;
  background: #efefef;
  padding: 1px 2px;
  color: #666;
  font-size: 10px;
  border-top: 1px solid #cccccc;
}

span.article_seperator {
	display: block;
	height: 1.5em;
}
td.dot {
	height:5px;
}
table.top_menu{
	padding-top:4px;
}
td.tab{
	height:10px;
}
a.mostread, a.mostread:visited {
	color:#9A927D;
	font-weight:normal;
}
a.mostread:hover {
	color:#008C00;
	font-weight:normal;
}
a.latestnews, a.latestnews:visited {
	color:#9A927D;
	font-weight:normal;
}
a.latestnews:hover {
	color:#008C00;
	font-weight:normal;
}
li.latestnews-user{
	padding-left:20px !important;
	padding-left:10px;
}
li.mostread-user{
	padding-left:20px !important;
	padding-left:10px;
}
td.site_name {
	font-size:44px;
	padding-top:16px;
	padding-bottom:10px;
	font-weight:bold;
	color:#008C00;
}
td.site_desc {
	font-size:15px;
	font-weight:bold;
	color:#008C00;
}
table.box_table{
	background-color:#F7F7F7;
}
a.readon {
	display:block;
	border: 1px solid #cccccc;
	width:100px;
	color:#99CC33;
	padding-left:15px;
	background-color:#F4F4F4;
	padding-top:3px;
}
td.bac_module {
	background-image:url(/img/bacModPng.png);
}
td.bac_module2 {
	background-image:url(/img/bacModPng.png);
}
td.ver {
	text-align: center;
	font-size:18px;
	font-weight:bold;
	color:#FFFFFF;
	height:30px;
}
td.logo{
	background-image: url(/img/leftLogoJpg.jpg);
	background-repeat:no-repeat;
	background-position:left;
}
table.logo2 {
	background-image: url(/img/bacLogoJpg.jpg);
	height:219px;
}
td.logo3 {
	background-image: url(/img/logoJpg.jpg);
	background-repeat:no-repeat;
	background-position:right;
}
'