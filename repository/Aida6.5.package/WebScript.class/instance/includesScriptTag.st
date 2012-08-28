private
includesScriptTag
	"if script starts and ends with a script tag. Otherwise we add it by ourselves"
	^'<script*' match: self script