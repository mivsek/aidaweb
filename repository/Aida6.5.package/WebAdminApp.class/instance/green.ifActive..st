views-sites
green: anElement ifActive: aSite
	"flash for a while then stay green for one hour"
	| script age |
	aSite isActive "last hour" ifFalse: [^nil].
	script := 'var e = document.getElementById("', anElement id asString, '");'.
	age := SpTimestamp now asSeconds - aSite lastRequestTimestamp asSeconds.
	age > 2
		ifTrue: [script := script, 'e.style.backgroundColor="green";']  "flash a bit"
		ifFalse: [script := script, 'e.style.backgroundColor="lightgreen";']. 
	script := script, '
if (e.greenId) { clearTimeout(e.greenId); }; if (e.green2Id) { clearTimeout(e.green2Id); };
e.greeId=setTimeout(function() { e.style.backgroundColor="lightGreen"; } , 500);
e.green2Id=setTimeout(function(){e.style.backgroundColor=null;},', (((3600 - age) max: 0)*1000) printString, ');
'.
	anElement scriptAfter: script