map
urlToMethodMap
	MapCache ifNotNil: [^MapCache].
	^MapCache := Dictionary new
		at: '/adaptation-readme' put: #(adaptationReadme 'text/plain');
		at: '/css/ui/images/ui-bg_diagonals-thick_18_b81900_40x40.png' put: #(cssUiImagesUiBgDiagonalsThick18B8190040x40Png 'image/png');
		at: '/css/ui/images/ui-bg_diagonals-thick_20_666666_40x40.png' put: #(cssUiImagesUiBgDiagonalsThick2066666640x40Png 'image/png');
		at: '/css/ui/images/ui-bg_flat_10_000000_40x100.png' put: #(cssUiImagesUiBgFlat1000000040x100Png 'image/png');
		at: '/css/ui/images/ui-bg_glass_100_f6f6f6_1x400.png' put: #(cssUiImagesUiBgGlass100F6f6f61x400Png 'image/png');
		at: '/css/ui/images/ui-bg_glass_100_fdf5ce_1x400.png' put: #(cssUiImagesUiBgGlass100Fdf5ce1x400Png 'image/png');
		at: '/css/ui/images/ui-bg_glass_65_ffffff_1x400.png' put: #(cssUiImagesUiBgGlass65Ffffff1x400Png 'image/png');
		at: '/css/ui/images/ui-bg_gloss-wave_35_f6a828_500x100.png' put: #(cssUiImagesUiBgGlossWave35F6a828500x100Png 'image/png');
		at: '/css/ui/images/ui-bg_highlight-soft_100_eeeeee_1x100.png' put: #(cssUiImagesUiBgHighlightSoft100Eeeeee1x100Png 'image/png');
		at: '/css/ui/images/ui-bg_highlight-soft_75_ffe45c_1x100.png' put: #(cssUiImagesUiBgHighlightSoft75Ffe45c1x100Png 'image/png');
		at: '/css/ui/images/ui-icons_222222_256x240.png' put: #(cssUiImagesUiIcons222222256x240Png 'image/png');
		at: '/css/ui/images/ui-icons_228ef1_256x240.png' put: #(cssUiImagesUiIcons228ef1256x240Png 'image/png');
		at: '/css/ui/images/ui-icons_ef8c08_256x240.png' put: #(cssUiImagesUiIconsEf8c08256x240Png 'image/png');
		at: '/css/ui/images/ui-icons_ffd27a_256x240.png' put: #(cssUiImagesUiIconsFfd27a256x240Png 'image/png');
		at: '/css/ui/images/ui-icons_ffffff_256x240.png' put: #(cssUiImagesUiIconsFfffff256x240Png 'image/png');
		at: '/css/ui/jquery-ui-1.8.21.custom.css' put: #(cssUiJqueryUi1821CustomCss 'text/css');
		at: '/index.html' put: #(indexHtml 'text/html');
		at: '/js/.jquery-ui-1.8.21.custom.min.js.kate-swp' put: #(jsJqueryUi1821CustomMinJsKateSwp 'text/plain');
		at: '/js/jquery-1.7.2.min.js' put: #(jsJquery172MinJs 'text/javascript');
		at: '/js/jquery-ui-1.8.21.custom.js' put: #(jsJqueryUi1821CustomJs 'text/javascript');
		at: '/js/jquery-ui-1.8.21.custom.min.js' put: #(jsJqueryUi1821CustomMinJs 'text/javascript');
		yourself.