test
testConectarCon
	
	self assert: dispositivo connection isNil.

	dispositivo conectarCon: Conn4GAdapter new.
	self assert: dispositivo connection pict equals: '4G'.
	
	dispositivo conectarCon: WiFiConn new.
	self assert: dispositivo connection pict equals: 'WiFi'.

	dispositivo conectarCon: Conn4GAdapter new.
	self assert: dispositivo connection pict equals: '4G'.
	