running
setUp
	server := Swazoo.SwazooServer singleton.
	"server initialize." "DANGEROUS! "  "to remove all stuff and stop it"
	"site := AIDASite newNamed: self siteName.
	site 
		host: self siteHost;
		ip: self siteIP;
		port: self sitePort;
		sslPort: self siteSSLPort. "