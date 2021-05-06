function [k,s]=sequence(A,f0,phi,kd,kf)
    k=kd:kf;
    s=A*sin(2*pi*f0*k+phi);
end
