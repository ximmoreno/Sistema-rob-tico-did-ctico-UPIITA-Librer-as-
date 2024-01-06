function[]=Home(s,i)
%Mandamos código de grupo de funciones 0x01
s.write(1,"uint8");
%Mandamos código de funcion 0x06
s.write(6,"uint8");
%Madamos el número de junta de la que queremos ejecutar el home 
pause(0.001);
s.write(i,"uint8");
end