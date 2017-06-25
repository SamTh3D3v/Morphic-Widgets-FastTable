accessing
headerColumn: column
	column id ifNil: [ ^ nil ]. 
	^ FTHeaderColumnCellMorph new 
		listCentering: #center;
		id: column id;
		table:self table;
		addMorph: column id asMorph;
		yourself