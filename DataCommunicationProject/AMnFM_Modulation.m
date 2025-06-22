... The information signal equation is em = Em Cos(2piFm.t)
... The carier signal is : ec = Ec Cos(2piFc.t)
... The Am Modulation signal is : eAM = A Cos (2piFct)
... THe frequency of the resultant signal is the same frequency of the carier
... But the Amplitude is always changing by the increasing or decreasing of the information signal amplitude
... so FAm = Fc and A = EAM = Ec+em = Ec + Em Cos(2piFm.t)
... Note we need to choose sampling rate in order to draw the signal
... Question: given an information signal 20Cos(2pi*10t) 
... and a carier signal 40Cis(2pi*20t) find the modulated signal and draw it.
fs = 1000; ... sampling rate 
t = 0:1/fs:1; ... time vector
... information signal
Em = 20;
Fm = 10;
em = Em*cos(2*pi*Fm*t); 
... carier signal
Ec = 40;
Fc = 20;
ec = Ec*cos(2*pi*Fc*t);
... modulated signal
A = Ec + em;
FAm = Fc;
eAM = A.*cos(2*pi*FAm*t);
...Or it can be calculated
eAm = Ec * (1 + Em/Ec .*cos(2*pi*Fm*t)).*cos(2*pi*Fc*t);
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
plot(t,eAM);
title('Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude (v)');