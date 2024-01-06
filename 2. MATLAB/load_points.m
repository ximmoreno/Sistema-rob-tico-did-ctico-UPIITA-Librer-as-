function [x,y,z]=load_points(i,s)
%Mandamos código de grupo de funciones 0x02
s.write(2,"uint8");
%Mandamos código de funcion 0x09
s.write(9,"uint8");
%Mandamos parámetro (punto de interes)
s.write(i,"uint8");
if(i==0)%cargamos todos los puntos
    %recibimos numero de datos a recibir
    
    %recibimos todos los datos con un for
else %cargamos el punto solicitado
    dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
    x=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante
    dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
    y=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante
    dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
    z=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante
end

end