accesing
sparc64Column: column row: rowIndex
	^ FTCheckBoxCellMorph table: table content: ((self elementAt: rowIndex) sparc64 ) allowEdit: false position: (Array with:column with: rowIndex)