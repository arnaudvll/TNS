clear variables;
close all;

[t,x,K]=echantillonnage(8,5,271,1147,deg2rad(25),deg2rad(38),0,0.01841,5000);

X1=fft(x,K);

%abscisses en indice
% subplot(2,2,1);
% plot(t,real(X1))
% 
% subplot(2,2,2);
% plot(t,imag(X1))
% 
% subplot(2,2,3);
% plot(t,abs(X1))
% 
% subplot(2,2,4);
% plot(t,angle(X1))
