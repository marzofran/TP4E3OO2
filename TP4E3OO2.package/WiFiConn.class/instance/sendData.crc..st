commands
sendData: data crc: crc
	Transcript show: 'Data to send: ', data;
		cr;
		show: 'CRC: ', crc;
		cr