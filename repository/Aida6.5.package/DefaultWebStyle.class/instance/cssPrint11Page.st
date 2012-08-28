styles-print
cssPrint11Page
	^'
@page {
    size: A4 portrait;
    margin: 54mm 16mm 27mm 16mm;
}
@page {
    @top { margin-top: 27mm; content: flow(header) };
    @bottom-center { content: counter(page) " od "  counter(pages); }
}'