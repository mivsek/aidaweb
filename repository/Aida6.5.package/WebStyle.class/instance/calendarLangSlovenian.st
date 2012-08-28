scripts-components
calendarLangSlovenian
	"For Javascript calendar input fields , see WebDateInputField"
	"WebStyle new calendarLangSlovenian"
	| text |
	text := '
/* Slovenian language file for the DHTML Calendar version 1.0 
* Author David Milost <mercy@volja.net>, January 2004.
* Corrected by Janko Mivs^ek <janko.mivsek@eranova.si>, November 2005.
* Feel free to use this script under the terms of the GNU Lesser General
* Public License, as long as you do not remove or alter this notice.
*/
// ** I18N

// For translators: please use UTF-8 if possible.  We strongly believe that
// Unicode is the answer to a real internationalized world.  Also please
// include your contact information in the header, as can be seen above.

 // full day names
Calendar._DN = new Array
("Nedelja",
 "Ponedeljek",
 "Torek",
 "Sreda",
 "C^etrtek",
 "Petek",
 "Sobota",
 "Nedelja");
 // short day names
 Calendar._SDN = new Array
("Ned",
 "Pon",
 "Tor",
 "Sre",
 "C^et",
 "Pet",
 "Sob",
 "Ned");
// First day of the week. "0" means display Sunday first, "1" means display
// Monday first, etc.
Calendar._FD = 1;

// short month names
Calendar._SMN = new Array
("Jan",
 "Feb",
 "Mar",
 "Apr",
 "Maj",
 "Jun",
 "Jul",
 "Avg",
 "Sep",
 "Okt",
 "Nov",
 "Dec");
  // full month names
Calendar._MN = new Array
("Januar",
 "Februar",
 "Marec",
 "April",
 "Maj",
 "Junij",
 "Julij",
 "Avgust",
 "September",
 "Oktober",
 "November",
 "December");

// tooltips
Calendar._TT = {};
Calendar._TT["INFO"] = "O koledarju";

Calendar._TT["ABOUT"] =
"DHTML izbira datuma in c^asa\n" +
"(c) dynarch.com 2002-2005 / Avtor: Mihai Bazon\n" + // don''t translate this this ;-)
"Zadnjo razlic^ico dobite na http://www.dynarch.com/projects/calendar/\n" +
"Licenca GNU LGPL.  Vec^ na http://gnu.org/licenses/lgpl.html." +
"\n\n" +
"Izbira datuma:\n" +
"- Za izbiro leta uporabite gumbe \xab, \xbb \n" +
"- Za izbiro meseca uporabite gumbe " + String.fromCharCode(0x2039) + ", " + String.fromCharCode(0x203a) + "\n" +
"- Zadrz^ite klik mis^ke na katerem koli od zgornjih gumbov za hitrejs^o izbiro.";
Calendar._TT["ABOUT_TIME"] = "\n\n" +
"Izbira c^asa:\n" +
"- Kliknite na katerikoli del c^asa za povec^anje\n" +
"- ali Shift-klik za zmanjs^anje\n" +
"- ali klik in povlek za hitrejs^o izbiro.";

Calendar._TT["PREV_YEAR"] = "Predhodno leto (dolg klik za meni)";
Calendar._TT["PREV_MONTH"] = "Predhodni mesec (dolg klik za meni)";
Calendar._TT["GO_TODAY"] = "Na danes";
Calendar._TT["NEXT_MONTH"] = "Naslednji mesec (dolg klik za meni)";
Calendar._TT["NEXT_YEAR"] = "Naslednje leto (dolg klik za meni)";
Calendar._TT["SEL_DATE"] = "Izberite datum";
Calendar._TT["DRAG_TO_MOVE"] = "Povlecite za premik";
Calendar._TT["PART_TODAY"] = " (danes)";

// the following is to inform that "%s" is to be the first day of week
// %s will be replaced with the day name.
Calendar._TT["DAY_FIRST"] = "Prikaz^i %s kot prvi dan";

// This may be locale-dependent.  It specifies the week-end days, as an array
// of comma-separated numbers.  The numbers are from 0 to 6: 0 means Sunday, 1
// means Monday, etc.
Calendar._TT["WEEKEND"] = "0,6";

Calendar._TT["CLOSE"] = "Zapri";
Calendar._TT["TODAY"] = "Danes";
Calendar._TT["TIME_PART"] = "(Shift-)Klikni ali povleci za spremembo vrednosti";

// date formats
Calendar._TT["DEF_DATE_FORMAT"] = "%d.%m.%Y";
Calendar._TT["TT_DATE_FORMAT"] = "%a, %e.%b";

Calendar._TT["WK"] = "ted";
Calendar._TT["TIME"] = "C^as:";
'.
 
	^AIDASite convert: text  convertToSloveneChars toCodepage: #'iso-8859-2'