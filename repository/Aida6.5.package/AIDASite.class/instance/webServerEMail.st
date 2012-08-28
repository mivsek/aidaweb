settings
webServerEMail

	"an email address of this web server "

	^self settings  at: #webServerEMail ifAbsentPut: ['aida-web@eranova.si'].