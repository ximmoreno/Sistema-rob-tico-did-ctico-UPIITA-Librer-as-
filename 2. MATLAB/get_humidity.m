function humidity=get_humidity(s)
%Mandamos código de grupo de funciones 0x02
s.write(2,"uint8");
%Mandamos código de funcion 0x05
s.write(5,"uint8");
dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
humidity=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante

end