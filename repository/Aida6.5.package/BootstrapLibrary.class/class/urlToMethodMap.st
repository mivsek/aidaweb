map
urlToMethodMap
	MapCache ifNotNil: [^MapCache].
	^MapCache := Dictionary new
		at: '/css/bootstrap-responsive.css' put: #(cssBootstrapResponsiveCss 'text/css');
		at: '/css/bootstrap-responsive.min.css' put: #(cssBootstrapResponsiveMinCss 'text/css');
		at: '/css/bootstrap.css' put: #(cssBootstrapCss 'text/css');
		at: '/css/bootstrap.min.css' put: #(cssBootstrapMinCss 'text/css');
		at: '/img/glyphicons-halflings-white.png' put: #(imgGlyphiconsHalflingsWhitePng 'image/png');
		at: '/img/glyphicons-halflings.png' put: #(imgGlyphiconsHalflingsPng 'image/png');
		at: '/js/bootstrap.js' put: #(jsBootstrapJs 'text/javascript');
		at: '/js/bootstrap.min.js' put: #(jsBootstrapMinJs 'text/javascript');
		yourself.