var _doName = textData[textVariables.doName] 

if(_doName && textData[textVariables.nameType] == textNameType.specific) {
	var _nameBank = textData[textVariables.nameBank]
	var _nameData = textData[textVariables.nameData]
	var _nameIndex = _nameData[dispPage]
	drawName = _nameBank[_nameIndex]
}