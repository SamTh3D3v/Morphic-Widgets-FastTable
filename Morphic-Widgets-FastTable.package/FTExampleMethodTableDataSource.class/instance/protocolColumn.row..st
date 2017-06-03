accessing
protocolColumn: column row: rowIndex
	^ FTCellMorph new
		color: (self colorFor: rowIndex);
		table:table; "table reference"
		addMorph: (self elementAt: rowIndex) protocol asStringMorph;
		yourself