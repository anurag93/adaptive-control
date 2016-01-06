y(1)=-1;
y1(1)=1;
theta=[1;1];
for n=1:50
    u(n)=sin(n);
    y(n+1)=-0.5*y(n)+u(n);
    phi=[-y(n);u(n)];
    theta1=theta+((phi)./(phi'*phi)).*(y(n+1)-phi'*theta);
    e(n)=y(n+1)-phi'*theta;
    y1(n+1)=phi'*theta;
    theta=theta1;
end
subplot(3,1,1);
t=1:1:50;
stem(t,e,'r');
subplot(3,1,2);
stem(1:1:51,y,'g');
subplot(3,1,3);
stem(1:1:51,y1,'m');

