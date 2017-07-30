accessing
prop6Column: column row: rowIndex
	^ FTDateCellMorph  table:table  date:((self elementAt: rowIndex) property6 ) allowEdit: true position: (Array with:column with: rowIndex)
	
	