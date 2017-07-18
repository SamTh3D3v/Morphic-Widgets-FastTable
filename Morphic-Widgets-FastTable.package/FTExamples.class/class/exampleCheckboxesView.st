examples
exampleCheckboxesView
	"Show a table with checkboxes cells, the edit is desabled"
	<example>
	|table ds|
ds:=FTCellSampleArchitectureDataSource  new.
table := FTTableMorph new
		extent: 500@500;
		selectionMode: #column;
		addColumn: (FTColumn id: 'distribution');
		addColumn: (FTColumn id: 'x86');
		addColumn: (FTColumn id: 'x8664');			
		addColumn: (FTColumn id: 'ia64');
		addColumn: (FTColumn id: 'ppc');	
		addColumn: (FTColumn id: 'ppc64');	
		addColumn: (FTColumn id: 'sparc32');	
		addColumn: (FTColumn id: 'sparc64');
		addColumn: (FTColumn id: 'arm');
		dataSource: ds;
		selectRowIndex: 1;
		showFirstRowSelection;	
		beSingleSelection;		
		onAnnouncement: FTCellStrongSelectionChanged 
			do: [ :ann | |index ep|
				index := ann selectedCellIndex.	
				ep := EditingProvider dateSource:ds. ep addCellEditingEvents:index.
		];
	   allowDeselection;
		yourself.
		table openInWindow.