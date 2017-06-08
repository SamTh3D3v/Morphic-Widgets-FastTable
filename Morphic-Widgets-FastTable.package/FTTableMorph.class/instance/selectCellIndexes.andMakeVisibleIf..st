accessing selection
selectCellIndexes: anArray andMakeVisibleIf: shouldEnsureVisibleSelection
	| oldSelectedCellIndexes |
	anArray = selectedCellsIndexes
		ifTrue: [ ^ self ].
	oldSelectedCellIndexes := selectedCellsIndexes.
	self basicSelectCellIndexes: anArray.
	shouldEnsureVisibleSelection ifTrue: [ self ensureVisibleFirstCellSelection ]. 
	self refresh.
	self
		doAnnounce:
			((FTCellSelectionChanged from: oldSelectedCellIndexes to: selectedCellsIndexes)
				fastTable: self;
				yourself)