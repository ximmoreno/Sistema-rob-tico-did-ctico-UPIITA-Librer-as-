clc
clear all
close all
qd=table2array(readtable("C:\Users\lguer\OneDrive\Escritorio\qd_matlab.csv"));
joint=table2array(readtable("C:\Users\lguer\OneDrive\Escritorio\joint_matlab.csv"));
error=table2array(readtable("C:\Users\lguer\OneDrive\Escritorio\error_matlab.csv"));
current=table2array(readtable("C:\Users\lguer\OneDrive\Escritorio\current_matlab.csv"));
t=[0:0.005:5.995];
figure();
plot(t,qd)
hold on
plot(t,joint)
legend('qd','q')
figure()
plot(t,error)
legend('error')
