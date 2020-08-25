% Returns a sine wave
function res_wave = wave_out(f0, f1, time)
    res_wave = cos(2 * pi * f0 * time) + cos(2 * pi * f1 * time);
end