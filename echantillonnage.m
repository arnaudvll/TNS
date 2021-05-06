function [k,x,K]=echantillonnage(A1,A2,v1,v2,phi1,phi2,td,tf,ve)
    kd = ceil(td*ve);
    kf = floor(tf*ve);
    [~,x1]=sequence(A1,v1/ve,phi1,kd,kf);
    [k,x2]=sequence(A2,v2/ve,phi2,kd,kf);
    x=x1+x2;
    K=length(k);
end

