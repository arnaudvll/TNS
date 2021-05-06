function [t,x,K]=echantillonnage(A1,A2,v1,v2,phi1,phi2,td,tf,ve)
    t=td:1/ve:tf+1/ve;
    k=t*ve;
    [k1,x1]=sequence(A1,v1/ve,phi1,ceil(k(1)),floor(k(end)));
    [k2,x2]=sequence(A2,v2/ve,phi2,ceil(k(1)),floor(k(end)));
    x=x1+x2;
    K=length(t);
end

