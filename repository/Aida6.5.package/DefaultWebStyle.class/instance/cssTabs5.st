styles-screen
cssTabs5
	^'
ul.tabs5 {
    float:left;
    width:600px;
    background:#DAE0D2 url("/img/tab5bggif.gif") repeat-x bottom;
    font-size:93%;
    line-height:normal;
    text-decoration: none;
    color: #333333;
    margin:0;
    padding:10px 10px 0;
    list-style:none;
    }
ul.tabs5 li {
    float:left;
    background:url("/img/tab5rightgif.gif") no-repeat right top;
    margin:0;
    padding:0 0 0 ;
    }
ul.tabs5 a, ul.tabs5 b {
   display:block;
   background:url("/img/tab5leftgif.gif") no-repeat left top;
   padding:5px 15px 4px 6px;
   text-decoration: none;
   color: #006699;
   font-family: Arial, Helvetica, sans-serif;
   font-weight: bold;
   font-size: 12px;
   }

/* Commented Backslash Hack
   hides rule from IE5-Mac \*/
ul.tabs5 a {float:none;}
/* End IE5-Mac hack */
ul.tabs5 a:hover {
  color:#333;
  }
ul.tabs5 li.tabs5selected {
  background-image:url("/img/tab5rightongif.gif");
  }
ul.tabs5 li.tabs5selected b {
  background-image:url("/img/tab5leftongif.gif");
  padding-bottom:5px;
  color: #666666;
  font-family: Arial, Helvetica, sans-serif;
  }
ul.tabs5 a:hover {
  color: #EFEFE6;
  }
'