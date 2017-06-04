private
selectAppendingCellIndex: cellIndex
	| currentSelection newSelection |
	currentSelection := self table selectedCellsIndexes.
	
	newSelection := (currentSelection includes: cellIndex)
		ifTrue: [ currentSelection copyWithout: cellIndex ]
		ifFalse: [ currentSelection copyWithFirst: cellIndex].
		
	self table selectCellIndexes: newSelection