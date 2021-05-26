test
testConfigurarCRC
	| current last |
	self assert: dispositivo crcCalculator isNil.
	
	dispositivo configurarCRC: CRC16_Calculator new.
	last := dispositivo crcCalculator crcFor: 'Test'.
	
	dispositivo configurarCRC: CRC32_Calculator new. 
	current := dispositivo crcCalculator crcFor: 'Test'.
	self deny: current equals: last.
	
	dispositivo configurarCRC: CRC16_Calculator new.
	last := current.
	current := dispositivo crcCalculator crcFor: 'Test'.
	self deny: current equals: last.