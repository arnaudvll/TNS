clear variables;
close all;

[k,x,K]=echantillonnage(8,5,271,1147,pi/2,pi/2,-0.01012,0.01012,5000);
t=k/5000;
figure(1)
plot(k,x)
title('séquence temporelle x[k]')

N=512;
y1=x(1:K/2);
y2=x(K/2:end);
y=[y1,zeros(1,N-K),y2];
k2=0:N-1;
figure(2)
plot(k2,y)
title('séquence x[k] réorganisée')

X=fft(y,N);

figure(3)
subplot(2,2,1)
plot(k2,real(X))
title('partie réelle')

subplot(2,2,2)
plot(k2,imag(X))
title('partie imaginaire')

subplot(2,2,3)
plot(k2,abs(X))
title('module')

subplot(2,2,4)
plot(k2,angle(X))
title('phase')
