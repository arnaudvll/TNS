clear variables;
close all;

[k,x,K]=echantillonnage(8,5,271,1147,deg2rad(25),deg2rad(38),-0.0081,0.01205,5000);
t=k/5000;
stem(t,x)


%qst3: on utilise la freq reduite, on arrondit au dessus et en dessous les
%indices pour etre dans l'intervalle et avoir des valeurs entieres