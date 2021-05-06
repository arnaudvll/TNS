clear variables;
close all;

[t,x,K]=echantillonnage(8,5,271,1147,deg2rad(25),deg2rad(38),-0.0081,0.01205,5000);
plot(t,x)

a=1:5