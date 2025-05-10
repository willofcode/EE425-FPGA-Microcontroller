% === Theoretical Filter Parameters ===
N = 20;                        % Delay in samples
b = [1, zeros(1, N-1), 1];     % Numerator coefficients: 1 + z^-N
a = 1;                         % Denominator (FIR filter)
c = 2^10;                      % Number of frequency points
fs = 1e6;                      % Sampling frequency in Hz

% Frequency response of theoretical filter
[h, w] = freqz(b, a, c, fs);   % w is in Hz

% === Measured Data ===
freq_khz_meas = [26.35, 78.95, 131.5, 184.25, 237, 289.5, 342, 394.5, 447, 500];
gain_meas = [0.08, 0.08, 0.08, 0.08, 0.08, 0.08, 0.08, 0.08, 0.08, 0.08];

% === Plotting ===
figure;
plot(w/1000, abs(h), 'b-', 'LineWidth', 1.5); hold on;   % Theoretical
plot(freq_khz_meas, gain_meas, 'ro', 'MarkerSize', 8, 'LineWidth', 1.5); % Measured

xlabel('Frequency (kHz)');
ylabel('Gain');
title('Measured vs. Theoretical Frequency Response');
legend('Theoretical (1 + z^{-N})', 'Measured Data', 'Location', 'Best');
grid on;


% Theoretical null frequencies
k = 0:9;
f_null_theoretical = (2*k + 1) * fs / (2*N) / 1000;  % in kHz

% Measured frequencies
f_measured = freq_khz_meas;

% Absolute error
abs_error = abs(f_measured - f_null_theoretical);

% Plot error
figure;
stem(1:10, abs_error, 'r', 'LineWidth', 1.5);
xlabel('Null Index');
ylabel('Absolute Error (kHz)');
title('Error Between Measured and Theoretical Null Frequencies');
grid on;
