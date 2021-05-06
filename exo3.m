clear variables;
close all;

[k,x,K]=echantillonnage(8,5,271,1147,deg2rad(25),deg2rad(38),0,0.01841,5000);

X1=fft(x,K);

%abscisses en indice
figure(1)
subplot(2,2,1);
plot(k,real(X1))
xlim([0 K-1])
title('partie réelle')
xlabel('indice')

subplot(2,2,2);
plot(k,imag(X1))
xlim([0 K-1])
title('partie imaginaire')
xlabel('indice')

subplot(2,2,3);
plot(k,abs(X1))
xlim([0 K-1])
title('module')
xlabel('indice')

subplot(2,2,4);
plot(k,angle(X1))
xlim([0 K-1])
title('phase')
xlabel('indice')

%fréquence réduite
f=k/K;
figure(2)

subplot(2,2,1);
plot(f,real(X1))
title('partie réelle')
xlabel('fréquence réduite')

subplot(2,2,2);
plot(f,imag(X1))
title('partie imaginaire')
xlabel('fréquence réduite')

subplot(2,2,3);
plot(f,abs(X1))
title('module')
xlabel('fréquence réduite')

subplot(2,2,4);
plot(f,angle(X1))
title('phase')
xlabel('fréquence réduite')

%fréquence réelle
v=f*5;
figure(3)

subplot(2,2,1);
plot(v,real(X1))
title('partie réelle')
xlim([0 5])
xlabel('fréquence réelle (kHz)')

subplot(2,2,2);
plot(v,imag(X1))
title('partie imaginaire')
xlim([0 5])
xlabel('fréquence réelle (kHz)')


subplot(2,2,3);
plot(v,abs(X1))
title('module')
xlim([0 5])
xlabel('fréquence réelle (kHz)')


subplot(2,2,4);
plot(v,angle(X1))
title('phase')
xlim([0 5])
xlabel('fréquence réelle (kHz)')




N=512;
X2=fft(x,N);
k2=0:N-1;

figure(4)
subplot(3,1,1)
plot(k2,abs(X2));
title('module')
xlabel('indice')
xlim([0 N-1])

subplot(3,1,2)
f2=k2/521;
plot(f2,abs(X2))
title('module')
xlabel('fréquence réduite')
xlim([0 1])

subplot(3,1,3)
v2=f2*5;
plot(v2,abs(X2))
title('module')
xlabel('fréquence réelle (kHz)')
xlim([0 5])
