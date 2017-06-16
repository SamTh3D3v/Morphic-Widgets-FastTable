initialization
setupCheckBox
	self checkbox:(CheckboxMorph on:self selected: #content
   changeSelected: #content:).
	checkbox 	beCheckbox;
	color: Color transparent;
	vResizing: #spaceFill;
	hResizing: #spaceFill;
	height: self bounds height;
   width: self bounds width;
	enabled: self allowEdit.