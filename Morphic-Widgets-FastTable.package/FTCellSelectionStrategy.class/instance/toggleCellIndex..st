private
toggleCellIndex: cellIndex
	((self table selectedCellsIndexes includes: cellIndex) 
		and: [ self table selectedCellsIndexes size = 1 "just one selected"
		and: [ self table allowsDeselection ] ])
			ifTrue: [  self table selectCellIndexes: #() ]
			ifFalse: [
				self table selectCellIndex: cellIndex ]