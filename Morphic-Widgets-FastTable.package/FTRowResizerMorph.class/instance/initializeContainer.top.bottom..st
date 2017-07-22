initialization
initializeContainer: aTableContainerMorph top: aTopRow bottom: aBottomRow
	self initialize.
	self height:  self class resizerHeight.
	container := aTableContainerMorph.
	topRow  := aTopRow.
	bottomRow  := aBottomRow
	