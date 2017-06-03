accessing
originColumn: column row: rowIndex
	^ FTCellMorph new 
		color: (self colorFor: rowIndex);
		table:table; "table reference"
		addMorph: (self elementAt: rowIndex) origin name asMorph;
		yourself