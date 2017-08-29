accesing
armColumn: column row: rowIndex
	^ FTCheckBoxCellMorph table: table content: ((self elementAt: rowIndex) arm ) allowEdit: false position: (Array with:column with: rowIndex)