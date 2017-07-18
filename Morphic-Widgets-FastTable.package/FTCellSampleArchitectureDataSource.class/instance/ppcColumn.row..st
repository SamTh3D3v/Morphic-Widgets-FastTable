accesing
ppcColumn: column row: rowIndex
	^ FTCheckBoxCellMorph table: table content: ((self elementAt: rowIndex) ppc ) allowEdit: false