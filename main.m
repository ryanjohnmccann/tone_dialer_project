
% === ERROR CHECK INPUT ===
% Desired time for each number's frequency to be played
% The bounds are between 0.05 and 1 second
des_duration = get_wave_duration();

% === EXAMPLE INPUT ===
% To input the number (978)-852-3327
% Simply input as an array like so: [9 7 8 8 5 2 3 3 2 7]

des_wave = get_wave_data(des_duration);
soundsc(des_wave, 10000)
pause(des_duration * 10 + 3)

% Primary tone sound
tone_wave = wave_out(440, 350, 0:0.0001:5);
% Busy signal
busy_wave = wave_out(620, 480, 0:0.0001:1);
% Hang up tone sound
signal_tone_wave = wave_out(480, 440, 0:0.0001:2);

soundsc(signal_tone_wave, 10000)
pause(3.5)
soundsc(signal_tone_wave, 10000)
pause(3.5)
soundsc(busy_wave, 10000)
pause(1)
soundsc(busy_wave, 10000)
pause(1)
soundsc(busy_wave, 10000)
pause(1)
soundsc(tone_wave, 10000)

% Other Desired plots
plot(des_duration(1:300), tone_wave(1:300), 'r');
title('Graph Of Ringing Tone')
xlabel('Time (s)')
ylabel('Frequency (Hz)')
figure(5)

plot(des_duration(1:300), busy_wave(1:300), 'g');
title('Graph Of Busy Signal')
xlabel('Time (s)')
ylabel('Frequency (Hz)')
figure(6)

plot(des_duration(1:300), tone_wave(1:300), 'b');
title('Graph Of Ringing Signal Tone')
xlabel('Time (s)')
ylabel('Frequency (Hz)')
