function dato=get_active_joints(s)
%Mandamos código de grupo de funciones 0x02
s.write(2,"uint8");
%Mandamos código de funcion 0x06
s.write(6,"uint8");
%esperamos a recibir el número de juntas activas
dato=uint8(s.read(1,"uint8"));%leemos 4 bytes
end