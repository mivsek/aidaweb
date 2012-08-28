views-sites
sitesElement
	| e sites |
	sites := SortedCollection  "enabled sites on top of the list"
		withAll: (SwazooServer singleton sites select: [:each | each isEnabled])
		sortBlock: [:a :b | a name < b name].
	sites := sites asOrderedCollection 
		addAll: (SortedCollection 
			withAll: (SwazooServer singleton sites select: [:each | each isEnabled not])
			sortBlock: [:a :b | a name < b name]) asOrderedCollection; yourself.
	e := (WebGrid new
		columnFilters: #(nil 5 nil 10 );
		columnWidth: #(0.03 0.10 0.03 0.10);
		columnNames: #(nil 'name' '' 'enabled/started' 'created' 'last request' 'pages today'
			 'this week' 'this month' 'all');
		columnAspects: #(nil name nil nil createdDate nil nil nil nil nil );
		columnAlign: #(nil nil nil nil center center right right right right);
		rowGrayIfTrue: [:site | site isEnabled not];
		column: 3 addBlock: [:site | 
			[WebLink text: 'link' linkTo: (site urlResolver fullUrlFor: site admin on: nil)]
				on: Error do: [:ex | WebText text: 'nolink'] ];
		column: 4 addBlock: [:site | self enabledStartedElementFor: site];
		column: 6 addBlock: [:site | self lastActivityElementFor: site];
		column: 7 addBlock: [:site | self pagesTodayElementFor: site];
		column: 8 addBlock: [:site | self pagesWeeklyElementFor: site];
		column: 9 addBlock: [:site | self pagesMonthlyElementFor: site];
		column: 10 addBlock: [:site | self pagesAllElementFor: site];
		collection: sites;
		setNumbering; 
		yourself).
	^e.