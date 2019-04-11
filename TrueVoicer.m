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


handles.image1 = imread('Eman template.png');
axes(handles.axes7);
imshow(handles.image1);
handles.image2 = imread('Emmanuel template.png');
axes(handles.axes1);
imshow(handles.image2);
handles.image3 = imread('Gamila template.png');
axes(handles.axes9);
imshow(handles.image3);
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
[handles.file1,handles.filename1]= uigetfile('*.ogg;*.mp3');
if ( handles.file1 ~= 0)
    [handles.audio,handles.fs] = audioread([handles.filename1,handles.file1]);
end 
% handles.image1 = imread('asaad.jpeg');
% axes(handles.axes5);
% imshow(handles.image1);
