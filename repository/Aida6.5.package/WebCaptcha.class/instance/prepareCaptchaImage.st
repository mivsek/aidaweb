converting
prepareCaptchaImage
	| textFName captchaFName |
	textFName := 'captchatext', self random, '.png'. captchaFName := 'captcha', self random, '.png'.
	OSProcess waitForCommand: 
		'convert -size 150x30 xc:transparent -font ', self fontName, ' -pointsize 25 -draw "text 40,23 ''', 
		self text, ''' " ', textFName.
	OSProcess waitForCommand: 'composite -gravity center ', 
		textFName, ' ', self backgroundImageFilename, ' ',  captchaFName.
	(SpFilename named: textFName) delete.
	self filename: captchaFName.
	self setPreparedTimestamp.