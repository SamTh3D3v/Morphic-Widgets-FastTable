accessing
prop4Column: column row: rowIndex
	^ FTCheckBoxCellMorph table: table content: ((self elementAt: rowIndex) property4 ) allowEdit: true position: (Array with:column with: rowIndex)
	