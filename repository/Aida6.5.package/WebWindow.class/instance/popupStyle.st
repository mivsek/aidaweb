private
popupStyle
	"for popup windows. Because they are stackable, we need to consider a level in the stack too"
	| level lvl |
	level :=self context level. lvl := level printString.
	^ '
form {width: 100%}
div#overlay', lvl ,' {
	position: fixed;
	width: 100%;
	height: 100%;
	z-index: ', (9000+(level*2)) printString, ';
	background-color: black;
	filter: alpha(opacity=10);
	-moz-opacity: 0.1;
	opacity: 0.1;
}
div#lightbox', lvl, ' { 
	background: #ffffff;
	z-index: ', (9001+(level*2)) printString, ';
	padding: 10px;
	border: 5px solid #888888;
	border-radius: 10px;
	box-shadow: 0 0 10px #333333;
}'