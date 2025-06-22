...FM Modulation
... The information signal equation is em = Em Cos(2piFm.t)
... The carier signal is : ec = Ec Cos(2piFc.t)
... the Fm modulation formula is s(t)=Acos(?c.t+?sin(?m.t))
... where A is the amplitude of the carier wave and beta = deltaf/Fm
... Let's take the same signals and try Fm modulation
... Question: given an information signal 20Cos(2pi*10t) 
... and a carier signal 40Cis(2pi*20t) find the modulated signal and draw it.
fs = 1000; ... sampling rate 
t = 0:1/fs:1; ... time vector
k = 1; ... frequency diviation sensitivity(constant depends on the system)
... information signal
Em = 20;
Fm = 10;
em = Em*cos(2*pi*Fm*t);
... frequency deviation
deltaF = k * Em;
... carier signal
Ec = 40;
Fc = 20;
ec = Ec*cos(2*pi*Fc*t);
... modulated signal
A = Ec ;
wc = 2*pi*Fc;
wm = 2*pi*Fm;
beta = deltaF/Fm;
sFm = A*cos(wc*t+beta*sin(wm*t));
... ploting
subplot(3,1,1);
plot(t,em);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude (v)');
...
subplot(3,1,2);
plot(t,ec);
title('Carier Signal');
xlabel('Time (s)');
ylabel('Amplitude (v)');
...
subplot(3,1,3);
plot(t,sFm);
title('Fm Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude (v)');


