Kpot = 0.318;
K = 1;
K1 = 100;
a = 100;
Km = 2.083;
am = 1.71;
Kg = 0.1;

% Potentiometer gains and plots
GainPot = tf(Kpot, 1);

step(GainPot)
title('Step Response: Potentiometer')
figure;

impulse(GainPot)
title('Impulse Respnonse: Potentiometer')
figure;

bode(GainPot)
title('Bode Plot: Potentiometer')
figure;

nyquist(GainPot)
title('Nyquist Plot: Potentiometer')

% Preamplifier gains and plots
GainPre = tf(K, 1);

step(GainPre)
title('Step Response: Preamplifier')
figure;

impulse(GainPre)
title('Impulse Response: Preamplifier')
figure;

bode(GainPre)
title('Bode Plot: Preamplifier')
figure;

nyquist(GainPre)
title('Nyquist Plot: Preamplifier')

% Power Amplifier gains and plots
GainPower = tf(K1, [1, a]);

step(GainPower)
title('Step Response: Power Amplifier')
figure;

impulse(GainPower)
title('Impulse Respnonse: Power Amplifier')
figure;

bode(GainPower)
title('Bode Plot: Power Amplifier')
figure;

nyquist(GainPower)
title('Nyquist Plot: Power Amplifier') 

% Motor and Load gains and plots
GainML = tf(Km, [1,am, 0]);

step(GainML)
title('Step Response: Motor and Load')
figure;

impulse(GainML)
title('Impulse Response: Motor and Load')
figure;

bode(GainML)
title('Bode Plot: Motor and Load')
figure;

nyquist(GainML)
title('Nyquist Plot:  Motor and Load') 

% Gears gains and plots
GainGears = tf(Kg,1);
step(GainGears)
title('Step Response: Gears')
figure;

impulse(GainGears)
title('Impulse Respnonse: Gears')
figure;

bode(GainGears)
title('Bode Plot: Gears')
figure;

nyquist(GainGears)
title('Nyquist Plot: Gears') 

% Complete System gains and plots
Gainall = tf(6.624,[1,101.71,171,6.624]);

step(Gainall)
title('Step Response: Complete System')
figure;

impulse(Gainall)
title('Impulse Respnonse: Complete System')
figure;

bode(Gainall)
title('Bode Plot: Complete System')
figure;

nyquist(Gainall)
title('Nyquist Plot: Complete System')
figure;

% Complete System without feedback
Gainallwo = tf(6.624,[1,101.71,171]);

step(Gainallwo)
title('Step Response: Complete System without Feedback')