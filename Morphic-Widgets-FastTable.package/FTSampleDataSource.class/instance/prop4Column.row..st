accessing
prop4Column: column row: rowIndex
	^ FTCheckBoxCellMorph table: table content: ((self elementAt: rowIndex) property4 ) allowEdit: false
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
		