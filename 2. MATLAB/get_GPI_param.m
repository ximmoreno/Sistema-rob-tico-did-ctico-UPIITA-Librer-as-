function [k0,k1,k2,k3]=get_GPI_param(joint, s)
%Mandamos código de grupo de funciones 0x02
s.write(2,"uint8");
%Mandamos código de funcion 0x07
s.write(7,"uint8");
%Enviamos parámetro (joint)
pause(0.001);
joint=uint8(joint);
s.write(joint,"uint8");

dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
k0=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante

dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
k1=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante

dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
k2=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante

dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
k3=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante

end