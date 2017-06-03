accessing selection
selectCellIndexes: anArray andMakeVisibleIf: shouldEnsureVisibleSelection
"#todo to be implemented"
	| oldSelectedCellIndexes |
	anArray = selectedCellsIndexes
		ifTrue: [ ^ self ].
	oldSelectedCellIndexes := selectedCellsIndexes.
	self basicSelectCellIndexes: anArray.
"	shouldEnsureVisibleSelection ifTrue: [ self ensureVisibleFirstSelection ]. "
	self refresh.
	self
		doAnnounce:
			((FTCellSelectionChanged from: oldSelectedCellIndexes to: selectedCellsIndexes)
				fastTable: self;
				yourself)