testing
hasSelection
self selectionMode ==#row
	ifTrue:[^ self selectedRowIndexes notEmpty]
	ifFalse:[^ self selectedCellsIndexes notEmpty]