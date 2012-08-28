NonHTMLResource for returning information in other formats like PDF, plain text etc.

Usage: in your view method for returning PDF as an example:

  MyApp>>viewAsPDF

	^WebNonHTMLResource forPDF: self pdf

Response will be with content type 'application/pdf', while url extension will still be .html. If you want appropriate url extension too, you need to temporary register that element in urlResolver and redirect to it.
