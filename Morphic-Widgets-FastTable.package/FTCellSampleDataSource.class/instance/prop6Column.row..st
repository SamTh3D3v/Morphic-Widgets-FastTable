accessing
prop6Column: column row: rowIndex
	^ FTDateCellMorph  table:table  date:((self elementAt: rowIndex) property6 ) allowEdit: true
	
	"^ FTCellMorph new
		color: (Color transparent);
		table: table;
      addMorphBack: (self elementAt: rowIndex) porperty4 asStringMorph;
		addMorphBack: ((CheckboxMorph 
									new)
									
									beCheckbox;
									color: Color  red;
									vResizing: #rigid;
									height: 20;
									width: 50;
									toggleSelected;
									label: 'label');
									yourself"
		