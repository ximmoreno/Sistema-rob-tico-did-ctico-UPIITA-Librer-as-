function [x,y,z]=get_position(s)
%Mandamos código de grupo de funciones 0x02
s.write(2,"uint8");
%Mandamos código de funcion 0x02
s.write(2,"uint8");
dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
x=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante
dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
y=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante
dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
z=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante


end
