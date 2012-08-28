scripts-components
calendarLangCzech
	"For Javascript calendar input fields , see WebDateInputField"
	"WebStyle new calendarLangCzech"
	^'
/* Czech language file for the DHTML Calendar version 1.0 
* Author Martin Pol√°k <nigol@nigol.cz>, July 2012.
* Feel free to use this script under the terms of the GNU Lesser General
* Public License, as long as you do not remove or alter this notice.
*/	

// ** I18N

// For translators: please use UTF-8 if possible.  We strongly believe that
// Unicode is the answer to a real internationalized world.  Also please
// include your contact information in the header, as can be seen above.

// full day names
Calendar._DN = new Array
("Ned&ecaron;le",
 "Pond&ecaron;l&iacute;",
 "&Uacute;ter&yacute",
 "St&rcaron;eda",
 "&Ccaron;tvrtek",
 "P&aacute;tek",
 "Sobota",
 "Ned&ecaron;le");

// Please note that the following array of short day names (and the same goes
// for short month names, _SMN) isn''t absolutely necessary.  We give it here
// for exemplification on how one can customize the short day names, but if
// they are simply the first N letters of the full name you can simply say:
//
//   Calendar._SDN_len = N; // short day name length
//   Calendar._SMN_len = N; // short month name length
//
// If N = 3 then this is not needed either since we assume a value of 3 if not
// present, to be compatible with translation files that were written before
// this feature.

// short day names
Calendar._SDN = new Array
("Ned",
 "Pon",
 "&Uacute;te",
 "St&rcaron;",
 "&Ccaron;tv",
 "P&aacute;t",
 "Sob",
 "Ned");

// First day of the week. "0" means display Sunday first, "1" means display
// Monday first, etc.
Calendar._FD = 1;

// full month names
Calendar._MN = new Array
("Leden",
 "&Uacute;nor",
 "B&rcaron;ezen",
 "Duben",
 "Kv&ecaron;ten",
 "&Ccaron;erven",
 "&Ccaron;ervenec",
 "Srpen",
 "Z&aacute;&rcaron;&iacute;",
 "&Rcaron;&iacute;jen",
 "Listopad",
 "Prosinec");

// short month names
Calendar._SMN = new Array
("Led",
 "&Uacute;no",
 "B&rcaron;e",
 "Dub",
 "Kv&ecaron;",
 "&Ccaron;er",
 "&Ccaron;vc",
 "Srp",
 "Z&aacute;&rcaron;",
 "&Rcaron;&iacute;j",
 "Lis",
 "Pro");

// tooltips
Calendar._TT = {};
Calendar._TT["INFO"] = "O kalend&aacute;&rcaron;i";

Calendar._TT["ABOUT"] =
"DHTML Date/Time Selector\n" +
"(c) dynarch.com 2002-2005 / Author: Mihai Bazon\n" + // don''t translate this this ;-)
"For latest version visit: http://www.dynarch.com/projects/calendar/\n" +
"Distributed under GNU LGPL.  See http://gnu.org/licenses/lgpl.html for details." +
"\n\n" +
"Date selection:\n" +
"- Use the \xab, \xbb buttons to select year\n" +
"- Use the " + String.fromCharCode(0x2039) + ", " + String.fromCharCode(0x203a) + " buttons to select month\n" +
"- Hold mouse button on any of the above buttons for faster selection.";
Calendar._TT["ABOUT_TIME"] = "\n\n" +
"Time selection:\n" +
"- Click on any of the time parts to increase it\n" +
"- or Shift-click to decrease it\n" +
"- or click and drag for faster selection.";

Calendar._TT["PREV_YEAR"] = "P&rcaron;ed. rok (podr&zcaron;te pro menu)";
Calendar._TT["PREV_MONTH"] = "P&rcaron;ed. m&ecaron;s. (podr&zcaron;te pro menu)";
Calendar._TT["GO_TODAY"] = "J&iacute;t na dne&scaron;ek";
Calendar._TT["NEXT_MONTH"] = "Dal&scaron;&iacute; m&ecaron;s. (podr&zcaron;te pro menu)";
Calendar._TT["NEXT_YEAR"] = "Dal&scaron;&iacute; rok (podr&zcaron;te pro menu)";
Calendar._TT["SEL_DATE"] = "Vyberte datum";
Calendar._TT["DRAG_TO_MOVE"] = "Ta&zcaron;en&iacute;m p&rcaron;esu&ncaron;te";
Calendar._TT["PART_TODAY"] = " (dnes)";

// the following is to inform that "%s" is to be the first day of week
// %s will be replaced with the day name.
Calendar._TT["DAY_FIRST"] = "Zobrazit %s jako prvn&iacute;";

// This may be locale-dependent.  It specifies the week-end days, as an array
// of comma-separated numbers.  The numbers are from 0 to 6: 0 means Sunday, 1
// means Monday, etc.
Calendar._TT["WEEKEND"] = "0,6";

Calendar._TT["CLOSE"] = "Zav&rcaron;&icaute;t";
Calendar._TT["TODAY"] = "Dnes";
Calendar._TT["TIME_PART"] = "(Shift-)Click nebo ta&zcaron;en&iacute;m zm&ecaron;&ncaron;te hodnotu";

// date formats
Calendar._TT["DEF_DATE_FORMAT"] = "%Y-%m-%d";
Calendar._TT["TT_DATE_FORMAT"] = "%a, %b %e";

Calendar._TT["WK"] = "t&yacute;";
Calendar._TT["TIME"] = "&Ccaron;as";
'