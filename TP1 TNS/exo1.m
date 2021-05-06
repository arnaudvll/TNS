clear variables;
close all;

[s1,k1]=sequence(2,1/34,0,0,26);
[s2,k2]=sequence(4,1/26,pi/2,-13,13);
[s3,k3]=sequence(1,3/32,pi/4,-10,10);
[s4,k4]=sequence(1,1/(2*sqrt(23)),-pi/2,0,50);

subplot(2,2,1);
stem(s1,k1)


subplot(2,2,2);
stem(s2,k2)

subplot(2,2,3);
stem(s3,k3)

subplot(2,2,4);
stem(s4,k4)