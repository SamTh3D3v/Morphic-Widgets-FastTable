as yet unclassified
setupRubTextFieldArea
	self rubTextField: RubTextFieldArea  new yourself.
	rubTextField color: Color transparent;
	vResizing: #spaceFill;
	hResizing: #spaceFill;
	height: self bounds height;
   width: self bounds width.