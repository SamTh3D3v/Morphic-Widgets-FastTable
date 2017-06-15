initialization
setupCheckBox
	self checkbox:CheckboxMorph new.
	checkbox 	beCheckbox;
	color: Color transparent;
	vResizing: #spaceFill;
	height: self bounds height;
   width: self bounds width;
	toggleSelected;
	label: 'label'