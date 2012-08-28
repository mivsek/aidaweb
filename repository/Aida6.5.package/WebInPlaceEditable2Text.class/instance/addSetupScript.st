private-streaming
addSetupScript
	"jQuery specific"
self scriptBefore: '
$(function() {
	var $log = $( "#log" );
	function log( text ) {
		$log.append( text + "<br/>" );
	}
	$( "#', self id asString, '" )
		.bind( "editsave", function( ev, ui ) {
			log( "save: " + ui.value );
		})
		.bind( "editchange", function( ev, ui ) {
			log( "change: " + ui.value );
		})
		.bind( "editcancel", function() {
			log( "cancel" );
	})
	.editable();
}); 
'