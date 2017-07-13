initialization
setupCheckBox
	self checkbox:(CellCheckBox  on:self selected: #content
   changeSelected: #content:).
	checkbox 	beCheckbox;
	color: Color transparent;
 
	vResizing: #shrinkWrap;
	hResizing: #shrinkWrap;
	height: self bounds height;
   width: self bounds width.