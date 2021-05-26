"Para probar"

Transcript open; clear.
disp := Dispositivo connection: WiFiConn new crc: CRC16_Calculator new.

disp send: 'Hola mundo'.
disp send: 'Chau mundo'.

disp conectarCon: Conn4GAdapter new.
disp conectarCon: WiFiConn new.
disp configurarCRC: CRC32_Calculator new.
disp configurarCRC: CRC16_Calculator new.