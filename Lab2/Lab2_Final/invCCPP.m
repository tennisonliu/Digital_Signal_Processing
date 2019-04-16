function [Ac,As,r,v0]= invCCPP(b0,b1,a1,a2)

Ac=b0;
r=abs(sqrt(a2));
v0=acos(a1/(-2*r))/pi;
As=(b1+r*Ac*cos(pi*v0))/(r*sin(pi*v0));
end