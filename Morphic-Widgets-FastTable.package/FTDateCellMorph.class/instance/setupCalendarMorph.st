initialization
setupCalendarMorph
"date is a string with format mm.dd.yyyy or mm-dd-yyyy or mm/dd/yyyy"
	|cal|
	cal :=  (CellCalendarMorph on: Date today).
	cal extent: 200 @ 160.
	cal position: 20 @ 20.
	self calendar: cal
	
	