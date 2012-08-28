A WebCaptcha provides a CAPTCHA image from input text, to be used for separating humans from bots, for instance when submiting blog comments (http://en.wikipedia.org/wiki/Captcha)

Our capthca is using ImageMagick (http://www.imagemagick.org) which must be installed first. It combines a background image (by default captcha-background.png, must be on current directory) with generated one from provided text in default font (see method fontName, currently Andy), which also must be installed and known to ImageMagick. 

To collect all installed fonts in your system for IMagics, run script
	imagick_type_gen > ~/.magics/type.xml

See http://www.imagemagick.org/Usage/scripts/imagick_type_gen

To see and change parameters of building captcha, look into method #prepareCaptchaImage