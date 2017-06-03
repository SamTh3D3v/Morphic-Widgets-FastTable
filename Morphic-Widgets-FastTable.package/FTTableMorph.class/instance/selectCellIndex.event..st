private
selectCellIndex: cellIndex event: event
	cellIndex
		ifNotNil: [ selectionStrategy selectCellIndex: cellIndex event: event ]
		ifNil: [ self selectCellIndexes: #() ].