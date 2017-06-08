examples
exampleTable5
	"Show a table with cell selection mode"
	<example>
	| table ds|
   ds:= FTExampleMethodTableDataSource for: Object.
	table := FTTableMorph new
		extent: 650@500;
		selectionMode: #column;
		addColumn: (FTColumn id: 'Name');
		addColumn: (FTColumn id: 'Protocol');
		addColumn: (FTColumn id: 'Origin');
		dataSource: ds;
		selectRowIndex: 1;
		beSingleSelection;
		showFirstRowSelection;

		yourself.
	^ table openInWindow