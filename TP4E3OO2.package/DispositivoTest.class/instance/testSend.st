test
testSend
	| current last |

	dispositivo conectarCon: Conn4GAdapter new.
	dispositivo configurarCRC: CRC16_Calculator new.
	
	last := dispositivo crcCalculator crcFor: 'Test'.
	current := dispositivo crcCalculator crcFor: 'Test'.
	self assert: last equals: current.
	
	dispositivo configurarCRC: CRC32_Calculator new.
	
	current := dispositivo crcCalculator crcFor: 'Test'.
	self deny: last equals: current.
	last := current.
	current := dispositivo crcCalculator crcFor: 'Test'.
	self assert: last equals: current.
	
	dispositivo conectarCon: WiFiConn new.
	dispositivo configurarCRC: CRC16_Calculator new.
	
	current := dispositivo crcCalculator crcFor: 'Test'.
	self deny: last equals: current.
	last := current.
	current := dispositivo crcCalculator crcFor: 'Test'.
	self assert: last equals: current.
	
	dispositivo configurarCRC: CRC32_Calculator new.
	
	current := dispositivo crcCalculator crcFor: 'Test'.
	self deny: last equals: current.
	last := current.
	current := dispositivo crcCalculator crcFor: 'Test'.
	self assert: last equals: current.
	