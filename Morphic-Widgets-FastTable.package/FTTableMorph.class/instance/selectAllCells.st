accessing selection
selectAllCells
|cellIndexes|
cellIndexes:=OrderedCollection new.
	self isMultipleSelection ifFalse: [ ^ self ].
	1 to: self numberOfRows do: [:c | 1 to: self numberOfColumns  do:[:r| cellIndexes add: (Array with:c with:r) ] ]. 
	self selectCellIndexes: cellIndexes asArray.