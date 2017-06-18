initialization
setupDropList
	self dropList:(DropListMorph
		on: self
		list:self itemSource
		selected: #selectedIndex  
		changeSelected: #selectedIndex: ).
	dropList color: Color transparent;
	vResizing: #spaceFill;
	hResizing: #spaceFill;
	height: self bounds height;
   width: self bounds width;
	enabled: self allowEdit.