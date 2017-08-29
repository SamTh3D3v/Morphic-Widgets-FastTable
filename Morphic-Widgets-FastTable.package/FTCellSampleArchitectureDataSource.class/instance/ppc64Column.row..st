accesing
ppc64Column: column row: rowIndex
	^ FTCheckBoxCellMorph table: table content: ((self elementAt: rowIndex) ppc64 ) allowEdit: false position: (Array with:column with: rowIndex)