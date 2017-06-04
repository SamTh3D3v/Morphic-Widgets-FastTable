private
selectCellIndexesUpTo: endIndex
	"Selects a range of cell, from what is already selected to a new celIndex, but make sure the selection is from the same column. 
	 This is used in case of multiple selections (when holding shift)"
	| oldSelected firstIndex step tupleCollection|

	oldSelected := self table selectedCellsIndexes.
	firstIndex :=  oldSelected 
		ifNotEmpty: [ oldSelected first ]
		ifEmpty: [ endIndex ].
	step := firstIndex first <= endIndex first 
		ifTrue: [ 1 ] 
		ifFalse: [ -1 ]. 
		tupleCollection:=OrderedCollection  new. "holds cell indexes from the firt to the last selected cell"
		firstIndex first to: endIndex first by: step do:[:a| tupleCollection add: (Array with:a with:firstIndex second)  ].

	self 
		selectCellIndexes: endIndex 
		previous: (oldSelected union: tupleCollection)