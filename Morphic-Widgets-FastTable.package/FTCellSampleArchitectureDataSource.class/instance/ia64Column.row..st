accesing
ia64Column: column row: rowIndex
	^ FTCheckBoxCellMorph table: table content: ((self elementAt: rowIndex) ia64 ) allowEdit: false position: (Array with:column with: rowIndex)