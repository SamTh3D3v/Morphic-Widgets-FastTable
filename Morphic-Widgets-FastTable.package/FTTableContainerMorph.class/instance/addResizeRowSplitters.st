drawing
addResizeRowSplitters
	| rowHeight nextRow delta |
	rowHeight := self owner rowHeight rounded.  "need to get a collection of the updated highs"
	nextRow := self top.
	delta := FTRowResizerMorph  resizerHeight  / 2.
	self  exposedRows values overlappingPairsWithIndexDo:  [ :topRow :bottomRow :index |
		nextRow := nextRow + rowHeight+ self owner intercellSpacing y.
		self addMorph: ((FTRowResizerMorph 
			container: self 
				top:  (topRow)
				bottom: (bottomRow))
			bounds: ((self left)@(nextRow - delta ) extent: (self width)@(delta));
			color: Color yellow ;
			yourself)	 ]