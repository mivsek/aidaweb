resources
adaptationReadme
^'

1. adaptation of /development-bundle/ui/jquery-ui-1.8.21.custom.js :

- from 320.line jQuery UI Widget 1.8.21
-- insert in 479 line:

// Mivsek jul12

		this.bindings = $();
		this.hoverable = $();
		this.focusable = $();

-- insert in 566 line, from disable: to _trigger::

// Mivsek jul12, added for Editable to work

  _bind:
    ...
  _delay:
    ...
  _hoverable:
    ...
  _focusable:

-- added at the end:

// added by Mivsek jul12, in development, from http://wiki.jqueryui.com/w/page/12137959/Editable
/*
 * jQuery UI Editable @VERSION (downloaded jul12)
 ...  

2. minified by http://closure-compiler.appspot.com/home to /js/jquery-ui-1.8.21.custom.min.js



Janko Mivsek jul12 
'