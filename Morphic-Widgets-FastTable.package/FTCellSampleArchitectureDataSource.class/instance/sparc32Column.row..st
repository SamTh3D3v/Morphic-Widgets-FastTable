accesing
sparc32Column: column row: rowIndex
	^ FTCheckBoxCellMorph table: table content: ((self elementAt: rowIndex) sparc32 ) allowEdit: false position: (Array with:column with: rowIndex)