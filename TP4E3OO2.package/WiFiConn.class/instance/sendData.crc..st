commands
sendData: data crc: crc
	Transcript show: 'Data to send through WiFi: ', data;
		cr;
		show: 'CRC: ', crc asString;
		cr