examples
exampleTable6
	"Show a table with cell selection mode, and enable editing them on double click"
	"this class uses the SampleDataSource implemented in test sub package"
	<example>
	|table ds|
ds:=FTSampleDataSource new:10.
table := FTTableMorph new
		extent: 500@500;
		selectionMode: #column;
		addColumn: (FTColumn id: 'column1');
		addColumn: (FTColumn id: 'column2');
		addColumn: (FTColumn id: 'column3');		
		dataSource: ds;
		selectRowIndex: 1;
		showFirstRowSelection;	
		beMultipleSelection;
		onAnnouncement: FTSelectionChanged 
			do: [ :ann | ('rows selected: ', (ann newSelectedRowIndexes asString)) crLog ];
		onAnnouncement: FTCellStrongSelectionChanged 
			do: [ :ann | |index morph ed |
				index := ann selectedCellIndex.
				morph := table visibleCellMorphAtIndex: index.
				ed := RubFloatingEditorBuilder new
					customizeEditorWith: [ :editor | 
						editor scrollbarsShowNever.
						editor bounds: (morph bounds insetBy: (Margin left: -2 top: 0 right: 0 bottom: 0  ))
					];
				withEditedContentsDo: [ :editedContents | 
					(ds elements at: index first) instVarAt:index second put: editedContents asString.
					table refresh].
				ed openEditorWithContents: ((ds elements at: index first)  instVarAt: index second).
		];
		yourself.
		table openInWindow.