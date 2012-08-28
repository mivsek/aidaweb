styles-screen
cssTabs1
	^'
/*from A List Apart article: http://www.alistapart.com/articles/slidingdoors/ */
/*WebTabs newClass: #tabs1 but dont forget to define class tabs1selected too ! */

ul.tabs1 {
  float:left; 
  width:100%; 
  background:#DAE0D2 url("/img/tab1bggif.gif") repeat-x bottom; 
  font-size:10px;
  line-height:normal;
  margin:0;
  padding:10px 0 0 0;
  list-style:none;
  }
ul.tabs1 li {
  float:left; 
  background:url("/img/tab1leftgif.gif") no-repeat left top;
  margin:0;
  padding:0 0 0 9px;
  }
ul.tabs1 a, ul.tabs1 b {
  float:left; 
  display:block;
  background:url("/img/tab1rightgif.gif") no-repeat right top;
  padding:5px 15px 4px 6px;
  text-decoration:none;
  font-weight:bold;
  color:#765;
  }
/* Commented Backslash Hack
   hides rule from IE5-Mac \*/
ul.tabs1 a {float:none;}
/* End IE5-Mac hack */
ul.tabs1 a:hover {
  color:#333;
  }
ul.tabs1 li.tabs1selected {
  background-image:url("/img/tab1leftongif.gif");
  }
ul.tabs1 li.tabs1selected a {
  background-image:url("/img/tab1rightongif.gif");
  color:#333;
  padding-bottom:5px;
  }
'