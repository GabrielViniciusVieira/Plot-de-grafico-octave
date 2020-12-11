n=1:10;
a_n(1)=0.504;
a_n(n+1)=(0.504*2)./((16*n.^2)+1)
n=[0,n]
figure
stem (n,a_n,"filled","r");
hold on;
xlabel('n');
ylabel ('a_n');
title ('Gráfico de [a_n] por [n]');
grid on;

n=1:10;
b_n(1)=0;
b_n(n+1)=(0.504*8*n)./((16*n.^2)+1)
n=[0,n]
figure
stem (n,b_n,"filled","b");
hold on;
xlabel('n');
ylabel ('b_n');
title ('Gráfico de [b_n] por [n]');
grid on;

n=1:10;
c_n(1)=a_n(1);
c_n(n+1)=sqrt(a_n(n+1).^2+b_n(n+1).^2);
n=[0,n]
figure
stem (n,c_n,"filled","-.k");
hold on;
xlabel('n');
ylabel ('C_n');
title ('Espectro de Amplitude [C_n] por [n]');
grid on;

n=1:10;
ang(1)=0; 
ang(n+1)=atan2(-b_n(n+1),a_n(n+1));
n=[0,n]
figure
stem (n,ang,"filled","-.k");
hold on;
xlabel('n');
ylabel ('ang(theta)');
title ('Espectro de Fase');
grid on;