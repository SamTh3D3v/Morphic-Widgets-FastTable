private
ensureVisibleFirstCellSelection
	| cellIndex |
	self hasSelection ifFalse: [ ^ self ].
	cellIndex := self selectedCellsIndex.
	(self container isRowIndexFullyVisible: cellIndex first) ifFalse: [ 
		cellIndex first < self showIndex 
			ifTrue: [ self moveShowIndexTo: cellIndex first]
			ifFalse: [ self moveShowIndexTo: (cellIndex first - self container calculateMinVisibleRows + 1) ] ]