commands
transmit: datos crc: crc
	Transcript
		show: '---';
		cr;
		show: 'Data to send through 4G: ' , datos;
		cr;
		show: 'CRC: ' , crc asString;
		cr