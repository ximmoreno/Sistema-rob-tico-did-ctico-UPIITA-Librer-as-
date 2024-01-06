function []=set_tool1_aperture(s,aperture)
%Mandamos código de grupo de funciones 0x03
s.write(3,"uint8");
%Mandamos código de funcion 0x04
s.write(4,"uint8");
%Mandamos la apertura deseada en milímetros
aperture=typecast(single(aperture),'uint8');%pasamos el dato de apertura a un flotante de 4 bytes
pause(0.001);
s.write(aperture,"uint8");
end