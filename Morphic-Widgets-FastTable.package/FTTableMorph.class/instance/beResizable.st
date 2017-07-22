accessing
beResizable
	resizable := true.
	allowNonUniformRowsHeights ifNil: [ self allowNonUniformRowsHeights: self class defaultRowsHeightsUniform ]