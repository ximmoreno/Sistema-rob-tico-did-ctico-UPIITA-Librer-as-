function sensor_data=load_sensor_data(tarjeta,sensor,indice,s)
%Mandamos código de grupo de funciones 0x02
s.write(2,"uint8");
%Mandamos código de funcion 0x0A
s.write(10,"uint8");
%Madamos el número de junta de la que queremos obtener datos 
pause(0.01);
tarjeta=uint8(tarjeta);
s.write(tarjeta,"uint8");

sensor=uint8(sensor);
s.write(sensor,"uint8");

indice=uint16(indice);
s.write(indice,"uint16");

dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
sensor_data=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante
end