private-streaming
addSetupScript
	"jQuery specific"
self scriptAfter: '
$("#', self id, '").autocomplete({
	source : function (request, callback) {
		$.ajax ({
			url : "/aidasession/element-', self id asString, '-ctx', self context id printString, '",
			data : { term : request.term },
			complete : function (xhr, result) {
				if (result != "success") return;
				callback (JSON.parse(xhr.responseText));
			}
		});
	}
})
.data( "autocomplete" )._renderItem = function( ul, item ) {
	return $( "<li></li>" )
		.data( "item.autocomplete", item )
		.append( "<a>" + item.label + "</a>" )
		.appendTo( ul );
};
'.