testing
testSanitizer
	| adaptor |
	adaptor := AidaModelAdaptor new.
	adaptor buffer: '< script id="id15">'.
	self assert: (adaptor sanitize; buffer) = '<  id="id15">'.
	adaptor buffer: '<img src=""/a.jpg<script type=text/javascript src="http://1.2.3.4/xss.js">" /></script>'.
	self assert: (adaptor sanitize; buffer) = '<img src=""/a.jpg< type=text/java src="http://1.2.3.4/xss.js">" /></>'.
	adaptor buffer: 'script for javascript<script>'.
	self assert: (adaptor sanitize; buffer) = 'script for javascript<>'.
	adaptor buffer: 'a < b. /* in script */ '.
	self assert: (adaptor sanitize; buffer) = 'a < b. /* in  */ '. " this is not ok! "