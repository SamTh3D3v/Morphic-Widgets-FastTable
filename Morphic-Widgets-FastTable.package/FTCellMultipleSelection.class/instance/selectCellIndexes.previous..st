private
selectCellIndexes: cellIndex previous: oldSelection		
	"Make sure the selected cell index is the first in selection range"
	self table selectCellIndexes: (((oldSelection includes: cellIndex)
		ifTrue: [ oldSelection copyWithout: cellIndex ]
		ifFalse: [ oldSelection] )
		copyWithFirst: cellIndex)