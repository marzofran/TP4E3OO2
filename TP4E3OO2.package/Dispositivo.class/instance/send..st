commands
send: datos
	|crc|
	crc := crcCalculator crcFor: datos.
	connection sendData: datos crc: crc
	