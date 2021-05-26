commands
sendData: data crc: crc
	Transcript
		show: '---';
		cr;
		show: 'Data to send through WiFi: ' , data;
		cr;
		show: 'CRC: ' , crc asString;
		cr