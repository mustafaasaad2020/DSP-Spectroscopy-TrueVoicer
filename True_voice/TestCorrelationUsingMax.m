% Ui dialog open box to browse the Spectrograph 
[emmanuel_spectrogram_filename,emmanuel_spectrogram_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Emmanuel Spectrograph');
emmanuel_spectrogram_file = [emmanuel_spectrogram_path emmanuel_spectrogram_filename]; % Reading the file
emmanuel_spectrogram = rgb2gray(imread(emmanuel_spectrogram_file)); % Reading the image in grayscale

[eman_spectrogram_filename,eman_spectrogram_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Eman Spectrograph');
eman_spectrogram_file = [eman_spectrogram_path eman_spectrogram_filename]; % Reading the file
eman_spectrogram = rgb2gray(imread(eman_spectrogram_file)); % Reading the image in grayscale

[gamila_spectrogram_filename,gamila_spectrogram_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Gamila Spectrograph');
gamila_spectrogram_file = [gamila_spectrogram_path gamila_spectrogram_filename]; % Reading the file
gamila_spectrogram = rgb2gray(imread(gamila_spectrogram_file)); % Reading the image in grayscale

% Ui dialog open box to browse the Template
[template1_filename,template1_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Template1'); 
template1_file = [template1_path template1_filename];  % Reading the file
template1 = rgb2gray(imread(template1_file)); % Reading the image in grayscale

[template2_filename,template2_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Template2'); 
template2_file = [template2_path template2_filename];  % Reading the file
template2 = rgb2gray(imread(template2_file)); % Reading the image in grayscale

[template3_filename,template3_path] = uigetfile('*.jpg;*.jpeg;*.png','Select Template3'); 
template3_file = [template3_path template3_filename];  % Reading the file
template3 = rgb2gray(imread(template3_file)); % Reading the image in grayscale

correlationWithEmmanuel = normxcorr2(template1(1:700,1:800),emmanuel_spectrogram); % getting correlation matrix

testEmmanuelSpectrogram = mean(mean(correlationWithEmmanuel));

correlationWithEman = normxcorr2(template2(1:700,1:800),eman_spectrogram); % getting correlation matrix
testEmanSpectrogram = mean(mean(correlationWithEman));

correlationWithGamila = normxcorr2(template3(1:700,1:800),gamila_spectrogram); % getting correlation matrix
testGamilaSpectrogram = mean(mean(correlationWithGamila));

maximumCorrelation = max([testEmmanuelSpectrogram,testEmanSpectrogram,testGamilaSpectrogram]);
if maximumCorrelation == testEmmanuelSpectrogram
    x = 'Emmanuel';
end
if maximumCorrelation == testEmanSpectrogram
    x = 'Eman';
end
if maximumCorrelation == testGamilaSpectrogram
    x = 'Gamila';
end
