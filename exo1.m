clear variables;
close all;

[k1,s1]=sequence(2,1/34,0,0,26);
[k2,s2]=sequence(4,1/26,pi/2,-13,13);
[k3,s3]=sequence(1,3/32,pi/4,-10,10);
[k4,s4]=sequence(1,1/(2*sqrt(23)),-pi/2,0,50);

subplot(2,2,1);
stem(k1,s1)


subplot(2,2,2);
stem(k2,s2)

subplot(2,2,3);
stem(k3,s3)

subplot(2,2,4);
stem(k4,s4)