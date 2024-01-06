function angle=get_joint_angle(joint,s)
%Mandamos código de grupo de funciones 0x02
s.write(2,"uint8");
%Mandamos código de funcion 0x01
s.write(1,"uint8");
%Mandamos parametros de funcion (junta)
pause(0.001);
joint=uint8(joint);
s.write(joint,"uint8");
%Recibimos el valor de junta
dato=uint8(s.read(4,"uint8"));%leemos 4 bytes
angle=typecast(dato,'single');%pasamos el arreglo de 4 bytes a su representacion flotante
end
