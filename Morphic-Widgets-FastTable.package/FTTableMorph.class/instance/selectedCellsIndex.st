accessing selection
selectedCellsIndex
	^ self selectedCellsIndexes 
		ifNotEmpty: [ :indexes | indexes first ]
		ifEmpty: [ #(1 1)] 