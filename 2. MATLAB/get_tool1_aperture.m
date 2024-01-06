function aperture=get_tool1_aperture(s)
%Mandamos código de grupo de funciones 0x02
s.write(2,"uint8");
%Mandamos código de funcion 0x08
s.write(8,"uint8");
%esperamos a recibir el dato
dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
aperture=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante
end