
% Error checks the user's input
function des_duration = get_wave_duration()
    user_duration = 0;
    while user_duration < 0.05 || user_duration > 1
        user_duration = input("How long would you like the tones' durations to be? (Enter a number between 0.05 and 1) --> ");
        if user_duration < 0.05 || user_duration > 1
            disp('ERROR: Please pick a valid duration.')
        end
    end
    des_duration = 0:0.0001:user_duration;
end
