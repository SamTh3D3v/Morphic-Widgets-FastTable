accessing
nameColumn: column row: rowIndex
	^ FTCellMorph new  
		color: (self colorFor: rowIndex);
		table:table; "table reference"
		cellInset: 5;
		addMorphBack: (self iconFor: rowIndex) asMorph;
		addMorphBack: (self elementAt: rowIndex) name asStringMorph;
		yourself