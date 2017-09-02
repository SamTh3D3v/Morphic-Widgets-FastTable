# Morphic-Widgets-FastTable

FastTables are a couple of table implementations for Pharo, they were integrated into Pharo to provide better
performances, unlimited data source, and extensible tables that could handle complex element morphs very well.
The following repository contains the core package used to implement FastTables. A couple of improvements and 
extensions were made to the original package to provide some better FT family widgets that could fulfill much bigger 
variety of applications.
The improvements are highlighted bellow and a link to a demo video is also provided at the end.


## Improvements:
* Cell's selection:
  - keyboard and mouse selection.
  - selection shortcuts.
  - multicell selection. 
```
|table|
table := FTTableMorph new.
"... table setup"
```
| Message | Description |
| --- | --- |
| table IsColumnSelectionMode | returns true if column selection mode is enabled. |
| table enableCellSelectionMode | enable cell selection mode.|
| table enableRowSelectionMode | enable row selection mode.|
| table SelectedCellsIndex | return the single selected cell.|
| table selectedCellsIndexes | return a collection of selected cell indexes.|
| table selectCellIndex: aPoint | select a single cell programmatically.|
| table selectCellIndexes: anArray | select multiple cells is multiple selection mode is enabled.|
| table selectAllCells | select all table's cells.|
| table deselectAllCells | deselect all cells.|
| ... | ... |

  
* Row height changing 

* Cell widgets:

  - FTHeaderColumnCellMorph.
  - FTCheckBoxCellMorph.
  - FTDateCellMorph.
  - FTDropListCellMorph.
  - FTLabelCellMorph.
  - FTTextEditCellMorph.

## Remaining work 
* Build a data sheet widget, to create sheet objects easily. The widget is based on fast tables and on the FTTextEditCellMorph 
with some advanced functionalities.
The spreadsheet has its own repository: https://github.com/SamTheDev/PharoSpreadSheet
* Migritte implementation to map domain objects to cells.
* Improve FasteTrees; 

## Demo video
* The following video illustrates some of the implemented functionalities: https://vimeo.com/230297933

## Installation 
* To use this package, you can either load the master branch using [IceBerg](https://github.com/pharo-vcs/iceberg), or load it from the following smalltalkhub repository using Monticello: http://smalltalkhub.com/#!/~ElhamerOussama/FastTableOptimizations/
