function varargout = main_gui(varargin)
% MAIN_GUI MATLAB code for main_gui.fig
%      MAIN_GUI, by itself, creates a new MAIN_GUI or raises the existing
%      singleton*.
%
%      H = MAIN_GUI returns the handle to a new MAIN_GUI or the handle to
%      the existing singleton*.
%
%      MAIN_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_GUI.M with the given input arguments.
%
%      MAIN_GUI('Property','Value',...) creates a new MAIN_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main_gui

% Last Modified by GUIDE v2.5 12-Apr-2019 18:49:32

global env;
global image_index;
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @main_gui_OutputFcn, ...
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


% --- Executes just before main_gui is made visible.
function main_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main_gui (see VARARGIN)

% Choose default command line output for main_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_gui_OutputFcn(hObject, eventdata, handles) 
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

contents = cellstr(get(hObject, 'String'))
env_selected = contents{get(hObject, 'Value')};
global env;
if(strcmp(env_selected, "Select environment"))
    env = 0
elseif (strcmp(env_selected, "Indoor image"))
    env = 1
elseif (strcmp(env_selected, "Outdoor image"))
    env = 2
end

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


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2

contents = cellstr(get(hObject, 'String'))
image_selected = contents{get(hObject, 'Value')};
global image_index;
if(strcmp(image_selected, "1"))
    image_index = 1
elseif (strcmp(image_selected, "2"))
    image_index = 2
elseif (strcmp(image_selected, "3"))
    image_index = 3
elseif(strcmp(image_selected, "4"))
    image_index = 4
elseif (strcmp(image_selected, "5"))
    image_index = 5
elseif (strcmp(image_selected, "6"))
    image_index = 6
elseif(strcmp(image_selected, "7"))
    image_index = 7
elseif (strcmp(image_selected, "8"))
    image_index = 8
elseif (strcmp(image_selected, "9"))
    image_index = 9
end

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global env;
global image_index;
addpath('demo');
error = demo_DCNF_FCSP_depths_prediction(env,image_index);
if(env == 1)
    A = imread(strcat("custom_indoor_sample/",num2str(image_index),".jpg"))
    %B = imread(strcat("results/custom_indoor_sample/",num2str(image_index),"/predict_depth_rgb.png"))
    imshow(A, 'Parent' , handles.axes1)
    imshow(strcat("results/custom_indoor_sample/",num2str(image_index),"/actual_depth_rgb.png"), 'Parent' , handles.axes2)
    colorbar(handles.axes2);
    imshow(strcat("results/custom_indoor_sample/",num2str(image_index),"/predict_depth_rgb.png"), 'Parent' , handles.axes3)
    colorbar(handles.axes3);  
elseif(env == 2)
    A = imread(strcat("custom_outdoor_sample/",num2str(image_index),".jpg"))
    %B = imread(strcat("results/custom_outdoor_sample/",num2str(image_index),"/predict_depth_rgb.png"))
    imshow(A, 'Parent' , handles.axes1)
    imshow(strcat("results/custom_outdoor_sample/",num2str(image_index),"/actual_depth_rgb.png"), 'Parent' , handles.axes2)
    colorbar(handles.axes2);
    imshow(strcat("results/custom_outdoor_sample/",num2str(image_index),"/predict_depth_rgb.png"), 'Parent' , handles.axes3)
    colorbar(handles.axes3);
end
%colorbar('Parent', handles.axes4);
handles.text5.String = strcat("Error=", num2str(error) , "%");



% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
