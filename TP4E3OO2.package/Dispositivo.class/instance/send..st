commands
send: datos
	connection sendData: datos crc: (crcCalculator crcFor: datos)
	