map
urlToMethodMap
	MapCache ifNotNil: [^MapCache].
	^MapCache := Dictionary new
		at: '/CHANGELOG' put: #(changelog 'text/plain');
		at: '/lib/prototype.js' put: #(libPrototypeJs 'text/javascript');
		at: '/MIT-LICENSE' put: #(mitLicense 'text/plain');
		at: '/README.rdoc' put: #(readmeRdoc 'text/plain');
		at: '/src/builder.js' put: #(srcBuilderJs 'text/javascript');
		at: '/src/controls.js' put: #(srcControlsJs 'text/javascript');
		at: '/src/dragdrop.js' put: #(srcDragdropJs 'text/javascript');
		at: '/src/effects.js' put: #(srcEffectsJs 'text/javascript');
		at: '/src/scriptaculous.js' put: #(srcScriptaculousJs 'text/javascript');
		at: '/src/slider.js' put: #(srcSliderJs 'text/javascript');
		at: '/src/sound.js' put: #(srcSoundJs 'text/javascript');
		at: '/src/unittest.js' put: #(srcUnittestJs 'text/javascript');
		yourself.