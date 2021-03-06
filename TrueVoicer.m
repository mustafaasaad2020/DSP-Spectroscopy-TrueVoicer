function varargout = TrueVoicer(varargin)
% TRUEVOICER MATLAB code for TrueVoicer.fig
%      TRUEVOICER, by itself, creates a new TRUEVOICER or raises the existing
%      singleton*.
%
%      H = TRUEVOICER returns the handle to a new TRUEVOICER or the handle to
%      the existing singleton*.
%
%      TRUEVOICER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRUEVOICER.M with the given input arguments.
%
%      TRUEVOICER('Property','Value',...) creates a new TRUEVOICER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TrueVoicer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TrueVoicer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TrueVoicer

% Last Modified by GUIDE v2.5 11-Apr-2019 10:22:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TrueVoicer_OpeningFcn, ...
                   'gui_OutputFcn',  @TrueVoicer_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TrueVoicer is made visible.
function TrueVoicer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TrueVoicer (see VARARGIN)

% Choose default command line output for TrueVoicer
handles.output = hObject;


handles.spectrogram1 = imread('C:\Users\mosta\Documents\GitHub\DSP-Spectroscopy-TrueVoicer\Spectrograms\Eman spectrogram.png');
axes(handles.axes7);
imshow(handles.spectrogram1);
handles.spectrogram2 = imread('C:\Users\mosta\Documents\GitHub\DSP-Spectroscopy-TrueVoicer\Spectrograms\Mano spectrogram.png');
axes(handles.axes1);
imshow(handles.spectrogram2);
handles.spectrogram3 = imread('C:\Users\mosta\Documents\GitHub\DSP-Spectroscopy-TrueVoicer\Spectrograms\Gamila spectrogram.png');
axes(handles.axes9);
imshow(handles.spectrogram3);
handles.spectrogram4 = imread('C:\Users\mosta\Documents\GitHub\DSP-Spectroscopy-TrueVoicer\Spectrograms\Moustafa spectrogram.png');
axes(handles.axes8);
imshow(handles.spectrogram4);



% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TrueVoicer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TrueVoicer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.file = 0;
handles.filename = 0;
[handles.filename,handles.path]= uigetfile('*.jpg;*.jpeg;*.png','Select Template');
if  handles.filename
    
    handles.file = [handles.path handles.filename];  % Reading the file
    axes(handles.axes5);
    imshow(imread(handles.file));
    set(handles.browse_path,'String',handles.file);
    template = rgb2gray(imread(handles.file)); % Reading the image in grayscale
    [template1, template2, template3, template4] = cropping(template,hObject, eventdata, handles);
    identifier = correlation(template1,template2,template3,template4,hObject, eventdata, handles);
    if identifier == 1
        set(handles.text3,'String','IT IS EMAN');
        user = imread('C:\Users\mosta\Documents\GitHub\DSP-Spectroscopy-TrueVoicer\Users Pictures\Eman.jpeg');
        axes(handles.axes6);
        imshow(user);
    elseif identifier == 2
        set(handles.text3,'String','IT IS EMMANUEL');
        user = imread('C:\Users\mosta\Documents\GitHub\DSP-Spectroscopy-TrueVoicer\Users Pictures\Emmanuel.jpeg');
        axes(handles.axes6);
        imshow(user);
    elseif identifier == 3
        set(handles.text3,'String','IT IS GAMILA');
        user = imread('C:\Users\mosta\Documents\GitHub\DSP-Spectroscopy-TrueVoicer\Users Pictures\Gamila.jpg');
        axes(handles.axes6);
        imshow(user);
    else 
        set(handles.text3,'String','IT IS MOUSTAFA');
        user = imread('C:\Users\mosta\Documents\GitHub\DSP-Spectroscopy-TrueVoicer\Users Pictures\Asaad.jpeg');
        axes(handles.axes6);
        imshow(user);
    end
else
    errordlg('No Template selected', 'No Files selected'); % Error msg if no spectrograph is selected
end 

guidata(hObject, handles);

function [template1,template2,template3,template4] = cropping(template,hObject, eventdata, handles)
    template1 = template;
    template2 = template;
    template3 = template;
    template4 = template;

    if size(template1,1) > size(handles.spectrogram1,1)
        template1(size(handles.spectrogram1,1)+1:size(template1,1),:)=[];
    end
    if size(template1,2) > size(handles.spectrogram1,2)
        template1(:,size(handles.spectrogram1,2)+1:size(template1,2))=[];
    end

    if size(template2,1) > size(handles.spectrogram2,1)
        template2(size(handles.spectrogram2,1)+1:size(template2,1),:)=[];
    end
    if size(template2,2) > size(handles.spectrogram2,2)
        template2(:,size(handles.spectrogram2,2)+1:size(template2,2))=[];
    end

    if size(template3,1) > size(handles.spectrogram3,1)
        template3(size(handles.spectrogram3,1)+1:size(template3,1),:)=[];
    end
    if size(template3,2) > size(handles.spectrogram3,2)
        template3(:,size(handles.spectrogram3,2)+1:size(template3,2))=[];
    end

    if size(template4,1) > size(handles.spectrogram4,1)
        template4(size(handles.spectrogram4,1)+1:size(template4,1),:)=[];
    end
    if size(template4,2) > size(handles.spectrogram4,2)
        template4(:,size(handles.spectrogram4,2)+1:size(template4,2))=[];
    end
    guidata(hObject, handles);
    
 function identifier = correlation(template1,template2,template3,template4,hObject, eventdata, handles)
     normalized_correlation1 = normxcorr2(template1,rgb2gray(handles.spectrogram1)); % getting correlation matrix
     [row1, column1] = find(normalized_correlation1 == max(max(normalized_correlation1))); % getting index of maximum correlation
     
     normalized_correlation2 = normxcorr2(template2,rgb2gray(handles.spectrogram2)); % getting correlation matrix
     [row2, column2] = find(normalized_correlation2 == max(max(normalized_correlation2))); % getting index of maximum correlation
     
     normalized_correlation3 = normxcorr2(template3,rgb2gray(handles.spectrogram3)); % getting correlation matrix
     [row3, column3] = find(normalized_correlation3 == max(max(normalized_correlation3))); % getting index of maximum correlation
     
     normalized_correlation4 = normxcorr2(template4,rgb2gray(handles.spectrogram4)); % getting correlation matrix
     [row4, column4] = find(normalized_correlation4 == max(max(normalized_correlation4))); % getting index of maximum correlation
     
     
     correlation_factor_1 = normalized_correlation1(row1,column1);
     correlation_factor_2 = normalized_correlation2(row2,column2);
     correlation_factor_3 = normalized_correlation3(row3,column3);
     correlation_factor_4 = normalized_correlation4(row4,column4);
     correlation_factors=[ correlation_factor_1; correlation_factor_2; correlation_factor_3; correlation_factor_4 ];
     [identifier, column] = find(correlation_factors == max(correlation_factors));
     guidata(hObject, handles);
     


% handles.image1 = imread('asaad.jpeg');
% axes(handles.axes5);
% imshow(handles.image1);
