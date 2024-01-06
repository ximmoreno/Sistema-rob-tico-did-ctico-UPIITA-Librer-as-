function []=set_joint_angle(joint,angle,speed,s)
%Mandamos código de grupo de funciones 0x01
s.write(1,"uint8");
%Mandamos código de funcion 0x01
s.write(1,"uint8");
pause(0.001);
joint=uint8(joint);
s.write(joint,"uint8");%enviamos junta a mover 1-6
pause(0.001);
angle=single(angle)
angle=typecast(angle,'uint8');%enviamos el angulo final deseado
s.write(angle,"uint8");
pause(0.001);
speed=single(speed)
speed=typecast(speed,'uint8');%enviamos la velocidad en porcentaje
s.write(speed,"uint8");
end