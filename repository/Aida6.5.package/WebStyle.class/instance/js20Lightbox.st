scripts
js20Lightbox
	^ '
function updateLightboxLevel(level) {
    var o = document.getElementById("overlay"+level);
    o.style.display = "inline";
    var e = document.getElementById("lightbox"+level);
    e.style.position = "absolute";
    e.style.display = "inline";
    e.style.width = "auto"; e.style.height = "auto";
    var width = e.offsetWidth; var height = e.offsetHeight;
    var pageWidth = window.innerWidth;  var pageHeight = window.innerHeight;
    if (typeof pageWidth != "number"){   // for IE
        pageWidth = document.documentElement.clientWidth;
        pageHeight = document.documentElement.clientHeight;
    };
    var x = (pageWidth - width) / 2;
    var y = ((pageHeight - height) / 2);
    x = x < 0 ? 0 : x; y = y < 0 ? 0 : y;
    e.style.left =  x + "px"; e.style.top = y + "px";
};
'