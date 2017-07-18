accesing
x86Column: column row: rowIndex
	^ FTCheckBoxCellMorph table: table content: ((self elementAt: rowIndex) x86 ) allowEdit: false