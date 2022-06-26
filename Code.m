clc;
clear;
%% DSP Group Task
% Members:
% 107120001 - Aayush
% 107120002 - Abhinav

%fundamental frequency
F=50;
%Taking Sampling Frequency as 2000Hz
Fs=2000;
%Time Sampling from 0 to 100ms
t= 0:1/Fs:0.1;

%Part A
%Odd Harmonics of a sinusoidal sequence for sampling frequency
x1=cos(pi*t*F);
x2=cos(3*pi*t*F);
x3=cos(5*pi*t*F);
x4=cos(7*pi*t*F);
x5=cos(9*pi*t*F);
x6=cos(11*pi*t*F);
%Multi Component sinusoidal sequence for sampling frequency
x=x1+x2+x3+x4+x5+x6;
%Plotting Sinusoidal Sequence
figure(1)
plot(t, x, 'r.-', 'LineWidth', 2, 'MarkerSize', 16);
xlabel ('Time');
ylabel ('Signal');
grid on;
%From Graph, Period of our sequence is 60ms

%Part B
%60ms Discrete Time Sequence
t1= 0:0.06:0.6;

%Odd Harmonics for Discrete Time Sequence
y1=cos(pi*t1*F);
y2=cos(3*pi*t1*F);
y3=cos(5*pi*t1*F);
y4=cos(7*pi*t1*F);
y5=cos(9*pi*t1*F);
y6=cos(11*pi*t1*F);
%New Multi Component sinusoidal sequence
y=y1+y2+y3+y4+y5+y6;
%Plotting Stem Graph for our sequence
figure(2)
stem(t1, y, 'b.-', 'LineWidth', 2, 'MarkerSize', 15);
xlabel ('Time');
ylabel ('Signal');
grid on;

%Part C
%Taking Different Sampling Frequencies
Fs2=80;
Fs3=150;
Fs4=300;
%Different Time sampling for different sampling frequencies
t2= 0:1/Fs2:0.1;
t3= 0:1/Fs3:0.1;
t4= 0:1/Fs4:0.1;
%Odd Harmonics of second sampling frequency
z1=cos(pi*t2*F);
z2=cos(3*pi*t2*F);
z3=cos(5*pi*t2*F);
z4=cos(7*pi*t2*F);
z5=cos(9*pi*t2*F);
z6=cos(11*pi*t2*F);
%Multi Component sinusoidal sequence for second sampling frequency
z=z1+z2+z3+z4+z5+z6;

%Odd Harmonics of third sampling frequency
w1=cos(pi*t3*F);
w2=cos(3*pi*t3*F);
w3=cos(5*pi*t3*F);
w4=cos(7*pi*t3*F);
w5=cos(9*pi*t3*F);
w6=cos(11*pi*t3*F);
%Multi Component sinusoidal sequence for third sampling frequency
w=w1+w2+w3+w4+w5+w6;

%Odd Harmonics of fourth sampling frequency
v1=cos(pi*t4*F);
v2=cos(3*pi*t4*F);
v3=cos(5*pi*t4*F);
v4=cos(7*pi*t4*F);
v5=cos(9*pi*t4*F);
v6=cos(11*pi*t4*F);
%Multi Component sinusoidal sequence for fourth sampling frequency
v=v1+v2+v3+v4+v5+v6;

%Comparing sequences of varying sampling frequencies
figure(3)
plot(t2,z,'g.-');
hold on;
plot(t3,w,'r.-');
hold on;
plot(t4,v,'b.-');
hold on;
plot(t,x,'k.-');
xlabel ('Time');
ylabel ('Signal');
grid on;


%Part D
%Odd Harmonics for linearly shifted sequence
u1=cos(pi*(t-0.005)*F);
u2=cos(3*pi*(t-0.005)*F);
u3=cos(5*pi*(t-0.005)*F);
u4=cos(7*pi*(t-0.005)*F);
u5=cos(9*pi*(t-0.005)*F);
u6=cos(11*pi*(t-0.005)*F);
%Multi Component linearly shifted sinusoidal sequence 
u=u1+u2+u3+u4+u5+u6;

%Plotting linearly shifted sequence
figure(4)
plot(t, u, 'r.-', 'LineWidth', 2, 'MarkerSize', 16);
xlabel ('Time');
ylabel ('Signal');
grid on;

