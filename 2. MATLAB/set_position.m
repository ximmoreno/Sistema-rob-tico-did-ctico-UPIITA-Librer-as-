function []=set_position(xf,yf,zf,R,P,Y,frame,speed,s)
%Mandamos mensaje para preguntar por los parametros del frame

%Transformamos los valores xf yf zf y RPY del frame respecto al marco cero



%Cinematica inversa
[Q1,Q2,Q3,Q4,Q5,Q6]=CinematicaInversa(roll,pitch,yaw,x,y,z,[0.5 0.5 0.5 1 1 1])
%Mandar mensajes
Q1=single(Q1);
s.write(Q1,"uint8");
Q2=single(Q2);
s.write(Q2,"uint8");
Q3=single(Q3);
s.write(Q3,"uint8");
Q4=single(Q4);
s.write(Q4,"uint8");
Q5=single(Q5);
s.write(Q5,"uint8");
Q6=single(Q6);
s.write(Q6,"uint8");

ok=uint8(s.read(1,"uint8"));%esperamos a recibir un ok de mensaje recibido
speed=single(speed);
s.write(speed,"uint8");

end