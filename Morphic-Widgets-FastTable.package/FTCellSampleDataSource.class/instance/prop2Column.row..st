accessing
prop2Column: column row: rowIndex
	^ FTTextEditCellMorph table: table content: ((self elementAt: rowIndex) property2 ) allowEdit: true position: (Array with:column with: rowIndex)
