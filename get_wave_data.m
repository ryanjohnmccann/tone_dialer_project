
% Returns an array of waveforms for each number input
function final_wave = get_wave_data(user_time)
    raw_num_arr = input('Please input a phone number --> ');
    final_wave = [];
    for num = raw_num_arr
        if num == 1
            temp_wave = wave_out(1209, 697, user_time);
            plot(user_time(1:300), temp_wave(1:300), 'b');
            title('Graph Of Number 1')
            xlabel('Time (s)')
            ylabel('Frequency (Hz)')
            figure(1)
        elseif num == 2
            temp_wave = wave_out(1336, 697, user_time);
        elseif num == 3
            temp_wave = wave_out(1477, 697, user_time);
            plot(user_time(1:300), temp_wave(1:300), 'r');
            title('Graph Of Number 3')
            xlabel('Time (s)')
            ylabel('Frequency (Hz)')
            figure(2)
        elseif num == 4
            temp_wave = wave_out(1209, 770, user_time);
        elseif num == 5
            temp_wave = wave_out(1336, 770, user_time);
        elseif num == 6
            temp_wave = wave_out(1477, 770, user_time);
        elseif num == 7
            temp_wave = wave_out(1209, 852, user_time);
        elseif num == 8
            temp_wave = wave_out(1336, 852, user_time);
        elseif num == 9
            temp_wave = wave_out(1477, 852, user_time);
        elseif num == '*'
            temp_wave = wave_out(1209, 949, user_time);
            plot(user_time(1:300), temp_wave(1:300), 'g');
            title('Graph Of *')
            xlabel('Time (s)')
            ylabel('Frequency (Hz)')
            figure(3)
        elseif num == 0
            temp_wave = wave_out(1336, 941, user_time);
        elseif num == '#'
            temp_wave = wave_out(1477, 941, user_time);
            plot(user_time(1:300), temp_wave(1:300), 'b');
            title('Graph Of #')
            xlabel('Time (s)')
            ylabel('Frequency (Hz)')
            figure(4)
        else
            disp("There are some incorrect digits. Would you still like to dial?")
            response = input('Enter command (y/n) --> ');
            while response ~= 'y' || response ~= 'n'
                if response == 'y'
                    temp_wave = [];
                elseif response == 'n'
                    exit
                else
                    disp("Sorry, that's an invalid command. Please try again.")
                end
            end
        end
        final_wave = cat(2, final_wave, temp_wave);
    end
end