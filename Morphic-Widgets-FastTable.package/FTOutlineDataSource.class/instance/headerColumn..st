accessing
headerColumn: column
	column id ifNil: [ ^ nil ]. 
	^ FTHeaderColumnCellMorph new 
		listCentering: #center;
		id: column id;
		addMorph: column id asMorph;
		yourself