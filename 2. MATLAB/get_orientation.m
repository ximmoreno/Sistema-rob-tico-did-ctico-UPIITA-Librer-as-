function orientation=get_orientation(s)
%Mandamos código de grupo de funciones 0x02
s.write(2,"uint8");
%Mandamos código de funcion 0x03
s.write(3,"uint8");
dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
roll=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante
dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
pitch=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante
dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
yaw=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante
%con roll pitch y yaw calculamos los elementos de la matriz de orientacion
orientation=rotz(roll)*roty(pitch)*rotx(yaw);
end
