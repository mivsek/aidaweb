tabulation
reorderTabulation
	"builds and reorders tabOrder to match tabIndex order of form (and subforms) elements"
	| flds withTabIndex |
	self initTabOrder.
	flds := self allFieldsIncludingSubforms.
	withTabIndex := flds select: [:each | each tabIndex notNil and: [each tabIndex ~= 0] ]. "with tab index explicitly set"
	withTabIndex := SortedCollection withAll: withTabIndex sortBlock: [:a :b | a tabIndex < b tabIndex].
	self tabOrder addAll: withTabIndex.
	withTabIndex := withTabIndex asSet.
	 "those without tab index at the end"
	self tabOrder addAll: (flds reject: [:each | withTabIndex includes: each]).