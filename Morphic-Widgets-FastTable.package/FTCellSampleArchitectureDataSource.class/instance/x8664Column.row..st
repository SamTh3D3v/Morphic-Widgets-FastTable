accesing
x8664Column: column row: rowIndex
	^ FTCheckBoxCellMorph table: table content: ((self elementAt: rowIndex) x8664 ) allowEdit: false position: (Array with:column with: rowIndex)