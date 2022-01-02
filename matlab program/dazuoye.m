function varargout = dazuoye(varargin)
% DAZUOYE MATLAB code for dazuoye.fig
%      DAZUOYE, by itself, creates a new DAZUOYE or raises the existing
%      singleton*.
%
%      H = DAZUOYE returns the handle to a new DAZUOYE or the handle to
%      the existing singleton*.
%
%      DAZUOYE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DAZUOYE.M with the given input arguments.
%
%      DAZUOYE('Property','Value',...) creates a new DAZUOYE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dazuoye_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dazuoye_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dazuoye

% Last Modified by GUIDE v2.5 22-May-2019 16:37:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dazuoye_OpeningFcn, ...
                   'gui_OutputFcn',  @dazuoye_OutputFcn, ...
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


% --- Executes just before dazuoye is made visible.
function dazuoye_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dazuoye (see VARARGIN)

% Choose default command line output for dazuoye
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dazuoye wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = dazuoye_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.

% --- Executes on button press in pushbutton1.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2

function pushbutton1_Callback(hObject, eventdata, handles)
open('AMxianggan');
sim('AMxianggan');
global AMxianggantiaozhi
    plot(AMxianggantiaozhi.time,AMxianggantiaozhi.signals(1).values);

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton1.
