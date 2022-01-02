function varargout = tiaozhijietiao(varargin)
% TIAOZHIJIETIAO MATLAB code for tiaozhijietiao.fig
%      TIAOZHIJIETIAO, by itself, creates a new TIAOZHIJIETIAO or raises the existing
%      singleton*.
%
%      H = TIAOZHIJIETIAO returns the handle to a new TIAOZHIJIETIAO or the handle to
%      the existing singleton*.
%
%      TIAOZHIJIETIAO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TIAOZHIJIETIAO.M with the given input
%      arguments.0
%
%      TIAOZHIJIETIAO('Property','Value',...) creates a new TIAOZHIJIETIAO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tiaozhijietiao_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tiaozhijietiao_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tiaozhijietiao

% Last Modified by GUIDE v2.5 25-Jun-2019 15:06:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tiaozhijietiao_OpeningFcn, ...
                   'gui_OutputFcn',  @tiaozhijietiao_OutputFcn, ...
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


% --- Executes just before tiaozhijietiao is made visible.
function tiaozhijietiao_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tiaozhijietiao (see VARARGIN)

% Choose default command line output for tiaozhijietiao
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tiaozhijietiao wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tiaozhijietiao_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uibuttongroup3.
function uibuttongroup3_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup3 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
obj=get(eventdata.NewValue,'Tag');
switch obj
    case 's1'
        open('AMxianggan');sim('AMxianggan');
        set(handles.edit5,'String','已调信号乘载波信号');
        global AMxgcj
        axes(handles.axes1);
        plot(AMxgcj.time,AMxgcj.signals(1).values);
        axes(handles.axes2);
        plot(AMxgcj.time,AMxgcj.signals(2).values);
    case 's2'
        open('AMxianggan');sim('AMxianggan');
        global AMxgjt
        axes(handles.axes3);
        plot(AMxgjt.time,AMxgjt.signals(1).values);
        axes(handles.axes4);
        plot(AMxgjt.time,AMxgjt.signals(2).values);
    case 's3'
        open('AMbaoluo');sim('AMbaoluo');
        set(handles.edit5,'String','带通滤波后的已调信号');
        global AMbltz
        axes(handles.axes1);
        plot(AMbltz.time,AMbltz.signals(1).values);
        axes(handles.axes2);
        plot(AMbltz.time,AMbltz.signals(2).values);
    case 's4'
         open('AMbaoluo');sim('AMbaoluo');
         global AMbljt
         axes(handles.axes3);
         plot(AMbljt.time,AMbljt.signals(1).values);
         axes(handles.axes4);
         plot(AMbljt.time,AMbljt.signals(3).values);
    case 's5'
        open('DSB');sim('DSB');
           set(handles.edit5,'String','已调信号乘载波信号');
        global DSBtiaozhi
        axes(handles.axes1);
        plot(DSBtiaozhi.time,DSBtiaozhi.signals(1).values);
         axes(handles.axes2);
        plot(DSBtiaozhi.time,DSBtiaozhi.signals(2).values);
    case 's6'
        open('DSB');sim('DSB');
        global DSBjietiao
         axes(handles.axes3);
        plot(DSBjietiao.time,DSBjietiao.signals(1).values);
         axes(handles.axes4);
        plot(DSBjietiao.time,DSBjietiao.signals(2).values);
    case 's7'
        open('USBlvbo');sim('USBlvbo');
           set(handles.edit5,'String','已调信号乘载波信号');
        global USBlbtz
        axes(handles.axes1);
        plot(USBlbtz.time,USBlbtz.signals(1).values);
         axes(handles.axes2);
        plot(USBlbtz.time,USBlbtz.signals(2).values);
    case 's8'
        open('USBlvbo');sim('USBlvbo');
        global USBlbjt
        axes(handles.axes3);
        plot(USBlbjt.time,USBlbjt.signals(1).values);
         axes(handles.axes4);
        plot(USBlbjt.time,USBlbjt.signals(2).values);
    case 's9'
        open('USBxiangyi');sim('USBxiangyi');
           set(handles.edit5,'String','已调信号乘载波信号');
        global USB23
        axes(handles.axes1);
        plot(USB23.time,USB23.signals(1).values);
         axes(handles.axes2);
        plot(USB23.time,USB23.signals(2).values);
    case 's10'
         open('USBxiangyi');sim('USBxiangyi');
        global USB2
        global USB3
        axes(handles.axes3);
        plot(USB2.time,USB2.signals(2).values);
         axes(handles.axes4);
        plot(USB3.time,USB3.signals(2).values);
    case 's11'
        open('LSBlvbo');sim('LSBlvbo');
           set(handles.edit5,'String','已调信号乘载波信号');
        global LSBlbtz
        axes(handles.axes1);
        plot(LSBlbtz.time,LSBlbtz.signals(1).values);
         axes(handles.axes2);
        plot(LSBlbtz.time,LSBlbtz.signals(2).values);
    case 's12'
         open('LSBlvbo');sim('LSBlvbo');
        global LSBlbjt
        axes(handles.axes3);
        plot(LSBlbjt.time,LSBlbjt.signals(1).values);
         axes(handles.axes4);
        plot(LSBlbjt.time,LSBlbjt.signals(2).values);
         case 's13'
        open('LSBxiangyi');sim('LSBxiangyi');
           set(handles.edit5,'String','已调信号乘载波信号');
        global LSB3
        axes(handles.axes1);
        plot(LSB3.time,LSB3.signals(1).values);
         axes(handles.axes2);
        plot(LSB3.time,LSB3.signals(3).values);
         case 's14'
        open('LSBxiangyi');sim('LSBxiangyi');
        global LSB2
        global LSB4
        axes(handles.axes3);
        plot(LSB2.time,LSB2.signals(2).values);
         axes(handles.axes4);
        plot(LSB4.time,LSB4.signals(2).values);
        
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
index=get(handles.listbox1,'value');
str=get(handles.listbox1,'string');
set(handles.edit7,'String',str{index});

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
index=get(handles.listbox1,'value');
str=get(handles.listbox1,'string');
set(handles.edit8,'String',str{index});


function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

obj=get(handles.edit7,'String');
switch obj
    case 'AM相干'
        open('AMxianggan');sim('AMxianggan');
        set(handles.edit5,'String','已调信号乘载波信号');
        
        axes(handles.axes1);
        plot(AMxgcj.time,AMxgcj.signals(1).values);
        axes(handles.axes2);
        plot(AMxgcj.time,AMxgcj.signals(2).values);
        close('AMxianggan');
    case 'AM包络'
        open('AMbaoluo');sim('AMbaoluo');
        set(handles.edit5,'String','带通滤波后的已调信号');

        axes(handles.axes1);
        plot(AMbltz.time,AMbltz.signals(1).values);
        axes(handles.axes2);
        plot(AMbltz.time,AMbltz.signals(2).values);
    case 'DSB'
        open('DSB');sim('DSB');
           set(handles.edit5,'String','已调信号乘载波信号');
   
        axes(handles.axes1);
        plot(DSBtiaozhi.time,DSBtiaozhi.signals(1).values);
         axes(handles.axes2);
        plot(DSBtiaozhi.time,DSBtiaozhi.signals(2).values);
    case 'USB滤波'
        open('USBlvbo');sim('USBlvbo');
           set(handles.edit5,'String','已调信号乘载波信号');
    
        axes(handles.axes1);
        plot(USBlbtz.time,USBlbtz.signals(1).values);
         axes(handles.axes2);
        plot(USBlbtz.time,USBlbtz.signals(2).values);
   
    case 'USB相移'
        open('USBxiangyi');sim('USBxiangyi');
           set(handles.edit5,'String','已调信号乘载波信号');

        axes(handles.axes1);
        plot(USB23.time,USB23.signals(1).values);
         axes(handles.axes2);
        plot(USB23.time,USB23.signals(2).values);
   
    case 'LSB滤波'
        open('LSBlvbo');sim('LSBlvbo');
           set(handles.edit5,'String','已调信号乘载波信号');

        axes(handles.axes1);
        plot(LSBlbtz.time,LSBlbtz.signals(1).values);
         axes(handles.axes2);
        plot(LSBlbtz.time,LSBlbtz.signals(2).values);
  
         case 'LSB相移'
        open('LSBxiangyi');sim('LSBxiangyi');
           set(handles.edit5,'String','已调信号乘载波信号');
                axes(handles.axes1);
        plot(LSB3.time,LSB3.signals(1).values);
         axes(handles.axes2);
        plot(LSB3.time,LSB3.signals(3).values);
        
        
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
obj=get(handles.edit8,'String');
switch obj
  
    case 'AM相干'
        open('AMxianggan');sim('AMxianggan');
        
        axes(handles.axes3);
        plot(AMxgjt.time,AMxgjt.signals(1).values);
        axes(handles.axes4);
        plot(AMxgjt.time,AMxgjt.signals(2).values);
   
    case 'AM包络'
         open('AMbaoluo');sim('AMbaoluo');

         axes(handles.axes3);
         plot(AMbljt.time,AMbljt.signals(1).values);
         axes(handles.axes4);
         plot(AMbljt.time,AMbljt.signals(3).values);
    
    case 'DSB'
        open('DSB');sim('DSB');

         axes(handles.axes3);
        plot(DSBjietiao.time,DSBjietiao.signals(1).values);
         axes(handles.axes4);
        plot(DSBjietiao.time,DSBjietiao.signals(2).values);
   
    case 'USB滤波'
        open('USBlvbo');sim('USBlvbo');
       axes(handles.axes3);
        plot(USBlbjt.time,USBlbjt.signals(1).values);
         axes(handles.axes4);
        plot(USBlbjt.time,USBlbjt.signals(2).values);
   
    case 'USB相移'
         open('USBxiangyi');sim('USBxiangyi');

        axes(handles.axes3);
        plot(USB2.time,USB2.signals(2).values);
         axes(handles.axes4);
        plot(USB3.time,USB3.signals(2).values);
   
    case 'LSB滤波'
         open('LSBlvbo');sim('LSBlvbo');

        axes(handles.axes3);
        plot(LSBlbjt.time,LSBlbjt.signals(1).values);
         axes(handles.axes4);
        plot(LSBlbjt.time,LSBlbjt.signals(2).values);
        
    case 'LSB相移'
        open('LSBxiangyi');sim('LSBxiangyi');
 
        axes(handles.axes3);
        plot(LSB2.time,LSB2.signals(2).values);
         axes(handles.axes4);
        plot(LSB4.time,LSB4.signals(2).values);
        
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
checkvalue=get(handles.checkbox1,'value');
if checkvalue==1
set(handles.slider5,'value',10);
set(handles.edit11,'String',num2str(10));
assignin('base','xy1',10);
assignin('base','zb1',10);
set(handles.slider5,'enable','off');
else
    set(handles.slider5,'enable','on');
end
% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

amplitude1=get(handles.slider5,'value');
set(handles.edit11,'String',num2str(amplitude1));
assignin('base','xy1',amplitude1);
% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double

strr1=get(handles.edit11,'String');
set(handles.slider5,'value',str2num(strr1));
assignin('base','xy1',str2num(strr1));


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object deletion, before destroying properties.
function slider5_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
amplitude2=get(handles.slider6,'value');
set(handles.edit12,'String',num2str(amplitude2));
assignin('base','zb1',amplitude2);

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double

strr2=get(handles.edit12,'String');
set(handles.slider6,'value',str2num(strr2));
assignin('base','zb1',str2num(strr2));

% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
check=get(handles.checkbox2,'Value');
if check==1
    obj=get(handles.edit7,'String');
switch obj
    case 'AM相干'
        open('AMxianggan');sim('AMxianggan');
        axes(handles.axes1);
        f=fft(AMxgcj.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
       
    case 'AM包络'
        open('AMbaoluo');sim('AMbaoluo');
       
        axes(handles.axes1);
        f=fft(AMbltz.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
        
    case 'DSB'
        open('DSB');sim('DSB');

    axes(handles.axes1);
        f=fft(DSBtiaozhi.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
        
    case 'USB滤波'
        open('USBlvbo');sim('USBlvbo');
     axes(handles.axes1);
        f=fft(USBlbtz.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
   
    case 'USB相移'
        open('USBxiangyi');sim('USBxiangyi');
         axes(handles.axes1);
        f=fft(USB23.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
   
    case 'LSB滤波'
        open('LSBlvbo');sim('LSBlvbo');

         axes(handles.axes1);
        f=fft(LSBlbtz.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
  
         case 'LSB相移'
        open('LSBxiangyi');sim('LSBxiangyi');
          axes(handles.axes1);
        f=fft(LSB3.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
        
        
end
    
end
        

% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
check=get(handles.checkbox3,'Value');
if check==1
    obj=get(handles.edit7,'String');
switch obj
    case 'AM相干'
        open('AMxianggan');sim('AMxianggan');
        axes(handles.axes2);
        f=fft(AMxgcj.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
       
    case 'AM包络'
        open('AMbaoluo');sim('AMbaoluo');
       
        axes(handles.axes2);
        f=fft(AMbltz.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
        
    case 'DSB'
        open('DSB');sim('DSB');

    axes(handles.axes2);
        f=fft(DSBtiaozhi.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
        
    case 'USB滤波'
        open('USBlvbo');sim('USBlvbo');
     axes(handles.axes2);
        f=fft(USBlbtz.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
   
    case 'USB相移'
        open('USBxiangyi');sim('USBxiangyi');
         axes(handles.axes2);
        f=fft(USB23.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
   
    case 'LSB滤波'
        open('LSBlvbo');sim('LSBlvbo');

         axes(handles.axes2);
        f=fft(LSBlbtz.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
  
         case 'LSB相移'
        open('LSBxiangyi');sim('LSBxiangyi');
          axes(handles.axes2);
        f=fft(LSB3.signals(3).values);
        yy=abs(f);
        plot(yy,'r-');
        
        
end
    
end
% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
check=get(handles.checkbox4,'Value');
if check==1
   obj=get(handles.edit8,'String');
switch obj
  
    case 'AM相干'
        open('AMxianggan');sim('AMxianggan');
        
        axes(handles.axes3);
        f=fft(AMxgjt.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
       
   
    case 'AM包络'
         open('AMbaoluo');sim('AMbaoluo');

              axes(handles.axes3);
        f=fft(AMbljt.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
       
    
    case 'DSB'
        open('DSB');sim('DSB');

         
             axes(handles.axes3);
        f=fft(DSBjietiao.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
       
   
    case 'USB滤波'
        open('USBlvbo');sim('USBlvbo');
   
              axes(handles.axes3);
        f=fft(USBlbjt.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
       
    case 'USB相移'
         open('USBxiangyi');sim('USBxiangyi');

    
             axes(handles.axes3);
        f=fft(USB2.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
       
   
    case 'LSB滤波'
         open('LSBlvbo');sim('LSBlvbo');

             axes(handles.axes3);
        f=fft(LSBlbjt.signals(1).values);
        yy=abs(f);
        plot(yy,'r-');
       
        
    case 'LSB相移'
        open('LSBxiangyi');sim('LSBxiangyi');
              axes(handles.axes3);
        f=fft(LSB2.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
       
end
end

% Hint: get(hObject,'Value') returns toggle state of checkbox4


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
check=get(handles.checkbox5,'Value');
if check==1
obj=get(handles.edit8,'String');
switch obj
  
    case 'AM相干'
       open('AMxianggan');sim('AMxianggan');
        axes(handles.axes4);
        f=fft(AMxgjt.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
       
   
    case 'AM包络'
         open('AMbaoluo');sim('AMbaoluo');

        axes(handles.axes4);
        f=fft(AMbljt.signals(3).values);
        yy=abs(f);
        plot(yy,'r-');
         
    
    case 'DSB'
        open('DSB');sim('DSB');

        axes(handles.axes4);
        f=fft(DSBjietiao.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');

   
    case 'USB滤波'
        open('USBlvbo');sim('USBlvbo');
      axes(handles.axes4);
        f=fft(USBlbjt.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
        
   
    case 'USB相移'
         open('USBxiangyi');sim('USBxiangyi');

        axes(handles.axes4);
        f=fft(USB3.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
         
   
    case 'LSB滤波'
         open('LSBlvbo');sim('LSBlvbo');

       axes(handles.axes4);
        f=fft(LSBlbjt.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
         
        
    case 'LSB相移'
        open('LSBxiangyi');sim('LSBxiangyi');
 
        axes(handles.axes4);
        f=fft(LSB4.signals(2).values);
        yy=abs(f);
        plot(yy,'r-');
end
        
end

% Hint: get(hObject,'Value') returns toggle state of checkbox5


% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
check2=get(handles.checkbox6,'Value');
if check2==1 
    nfft=1024;
    Fs=1000;
  obj=get(handles.edit7,'String');
switch obj
    case 'AM相干'
       open('AMxianggan');sim('AMxianggan');
    window=boxcar(length(AMxgcj.signals(1).values));

    [pxx,f]=periodogram(AMxgcj.signals(1).values,window,nfft,Fs);
    axes(handles.axes1);
    plot(f,10*log10(pxx),'g-');
    
     case 'AM包络'
        open('AMbaoluo');sim('AMbaoluo');
        window=boxcar(length(AMbltz.signals(1).values));
        [pxx,f]=periodogram(AMbltz.signals(1).values,window,nfft,Fs);
        axes(handles.axes1);
  plot(f,10*log10(pxx),'g-');
        
    case 'DSB'
        open('DSB');sim('DSB');
window=boxcar(length(DSBtiaozhi.signals(1).values));
        [pxx,f]=periodogram(DSBtiaozhi.signals(1).values,window,nfft,Fs);
        axes(handles.axes1);
  plot(f,10*log10(pxx),'g-');
        
    case 'USB滤波'
        open('USBlvbo');sim('USBlvbo');
        window=boxcar(length(USBlbtz.signals(1).values));
        [pxx,f]=periodogram(USBlbtz.signals(1).values,window,nfft,Fs);
        axes(handles.axes1);
  plot(f,10*log10(pxx),'g-');
        
    
   
    case 'USB相移'
        open('USBxiangyi');sim('USBxiangyi');
        window=boxcar(length(USB23.signals(1).values));
        [pxx,f]=periodogram(USB23.signals(1).values,window,nfft,Fs);
        axes(handles.axes1);
  plot(f,10*log10(pxx),'g-');
        
        
   
    case 'LSB滤波'
        open('LSBlvbo');sim('LSBlvbo');
window=boxcar(length(LSBlbtz.signals(1).values));
        [pxx,f]=periodogram(LSBlbtz.signals(1).values,window,nfft,Fs);
        axes(handles.axes1);
  plot(f,10*log10(pxx),'g-');
        
  
         case 'LSB相移'
        open('LSBxiangyi');sim('LSBxiangyi');
        window=boxcar(length(LSB3.signals(1).values));
        [pxx,f]=periodogram(LSB3.signals(1).values,window,nfft,Fs);
        axes(handles.axes1);
  plot(f,10*log10(pxx),'g-');
        
end
end

    
% Hint: get(hObject,'Value') returns toggle state of checkbox6


% --- Executes during object creation, after setting all properties.


% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
check2=get(handles.checkbox7,'Value');
if check2==1 
    nfft=1024;
    Fs=1000;
  obj=get(handles.edit7,'String');
switch obj
    case 'AM相干'
       open('AMxianggan');sim('AMxianggan');
    window=boxcar(length(AMxgcj.signals(2).values));

    [pxx,f]=periodogram(AMxgcj.signals(2).values,window,nfft,Fs);
    axes(handles.axes2);
    plot(f,10*log10(pxx),'g-');
    
     case 'AM包络'
        open('AMbaoluo');sim('AMbaoluo');
        window=boxcar(length(AMbltz.signals(2).values));
        [pxx,f]=periodogram(AMbltz.signals(2).values,window,nfft,Fs);
        axes(handles.axes2);
  plot(f,10*log10(pxx),'g-');
        
    case 'DSB'
        open('DSB');sim('DSB');
window=boxcar(length(DSBtiaozhi.signals(2).values));
        [pxx,f]=periodogram(DSBtiaozhi.signals(2).values,window,nfft,Fs);
        axes(handles.axes2);
  plot(f,10*log10(pxx),'g-');
        
    case 'USB滤波'
        open('USBlvbo');sim('USBlvbo');
        window=boxcar(length(USBlbtz.signals(2).values));
        [pxx,f]=periodogram(USBlbtz.signals(2).values,window,nfft,Fs);
        axes(handles.axes2);
  plot(f,10*log10(pxx),'g-');
        
    
   
    case 'USB相移'
        open('USBxiangyi');sim('USBxiangyi');
        window=boxcar(length(USB23.signals(2).values));
        [pxx,f]=periodogram(USB23.signals(2).values,window,nfft,Fs);
        axes(handles.axes2);
  plot(f,10*log10(pxx),'g-');
        
        
   
    case 'LSB滤波'
        open('LSBlvbo');sim('LSBlvbo');
window=boxcar(length(LSBlbtz.signals(2).values));
        [pxx,f]=periodogram(LSBlbtz.signals(2).values,window,nfft,Fs);
        axes(handles.axes2);
  plot(f,10*log10(pxx),'g-');
        
  
         case 'LSB相移'
        open('LSBxiangyi');sim('LSBxiangyi');
        window=boxcar(length(LSB3.signals(3).values));
        [pxx,f]=periodogram(LSB3.signals(3).values,window,nfft,Fs);
        axes(handles.axes2);
  plot(f,10*log10(pxx),'g-');
        
end
end
% Hint: get(hObject,'Value') returns toggle state of checkbox7


% --- Executes on button press in checkbox8.
function checkbox8_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
check2=get(handles.checkbox8,'Value');
if check2==1 
    nfft=1024;
    Fs=1000;
  obj=get(handles.edit7,'String');
switch obj
    case 'AM相干'
       open('AMxianggan');sim('AMxianggan');
    window=boxcar(length(AMxgjt.signals(1).values));

    [pxx,f]=periodogram(AMxgjt.signals(1).values,window,nfft,Fs);
    axes(handles.axes3);
    plot(f,10*log10(pxx),'g-');
    
     case 'AM包络'
        open('AMbaoluo');sim('AMbaoluo');
        window=boxcar(length(AMbljt.signals(1).values));
        [pxx,f]=periodogram(AMbljt.signals(1).values,window,nfft,Fs);
        axes(handles.axes3);
  plot(f,10*log10(pxx),'g-');
        
    case 'DSB'
        open('DSB');sim('DSB');
window=boxcar(length(DSBjietiao.signals(1).values));
        [pxx,f]=periodogram(DSBjietiao.signals(1).values,window,nfft,Fs);
        axes(handles.axes3);
  plot(f,10*log10(pxx),'g-');
        
    case 'USB滤波'
        open('USBlvbo');sim('USBlvbo');
        window=boxcar(length(USBlbjt.signals(1).values));
        [pxx,f]=periodogram(USBlbjt.signals(1).values,window,nfft,Fs);
        axes(handles.axes3);
  plot(f,10*log10(pxx),'g-');
        
    
   
    case 'USB相移'
        open('USBxiangyi');sim('USBxiangyi');
        window=boxcar(length(USB2.signals(2).values));
        [pxx,f]=periodogram(USB2.signals(2).values,window,nfft,Fs);
        axes(handles.axes3);
  plot(f,10*log10(pxx),'g-');
        
        
   
    case 'LSB滤波'
        open('LSBlvbo');sim('LSBlvbo');
window=boxcar(length(LSBlbjt.signals(1).values));
        [pxx,f]=periodogram(LSBlbjt.signals(1).values,window,nfft,Fs);
        axes(handles.axes3);
  plot(f,10*log10(pxx),'g-');
        
  
         case 'LSB相移'
        open('LSBxiangyi');sim('LSBxiangyi');
        window=boxcar(length(LSB2.signals(2).values));
        [pxx,f]=periodogram(LSB2.signals(2).values,window,nfft,Fs);
        axes(handles.axes3);
  plot(f,10*log10(pxx),'g-');
        
end
end
% Hint: get(hObject,'Value') returns toggle state of checkbox8


% --- Executes on button press in checkbox9.
function checkbox9_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
check2=get(handles.checkbox9,'Value');
if check2==1 
    nfft=1024;
    Fs=1000;
  obj=get(handles.edit7,'String');
switch obj
    case 'AM相干'
       open('AMxianggan');sim('AMxianggan');
    window=boxcar(length(AMxgjt.signals(2).values));

    [pxx,f]=periodogram(AMxgjt.signals(2).values,window,nfft,Fs);
    axes(handles.axes4);
    plot(f,10*log10(pxx),'g-');
    
     case 'AM包络'
        open('AMbaoluo');sim('AMbaoluo');
        window=boxcar(length(AMbljt.signals(3).values));
        [pxx,f]=periodogram(AMbljt.signals(3).values,window,nfft,Fs);
        axes(handles.axes4);
  plot(f,10*log10(pxx),'g-');
        
    case 'DSB'
        open('DSB');sim('DSB');
window=boxcar(length(DSBjietiao.signals(2).values));
        [pxx,f]=periodogram(DSBjietiao.signals(2).values,window,nfft,Fs);
        axes(handles.axes4);
  plot(f,10*log10(pxx),'g-');
        
    case 'USB滤波'
        open('USBlvbo');sim('USBlvbo');
        window=boxcar(length(USBlbjt.signals(2).values));
        [pxx,f]=periodogram(USBlbjt.signals(2).values,window,nfft,Fs);
        axes(handles.axes4);
  plot(f,10*log10(pxx),'g-');
        
    
   
    case 'USB相移'
        open('USBxiangyi');sim('USBxiangyi');
        window=boxcar(length(USB3.signals(2).values));
        [pxx,f]=periodogram(USB3.signals(2).values,window,nfft,Fs);
        axes(handles.axes4);
  plot(f,10*log10(pxx),'g-');
        
        
   
    case 'LSB滤波'
        open('LSBlvbo');sim('LSBlvbo');
window=boxcar(length(LSBlbjt.signals(2).values));
        [pxx,f]=periodogram(LSBlbjt.signals(2).values,window,nfft,Fs);
        axes(handles.axes4);
  plot(f,10*log10(pxx),'g-');
        
  
         case 'LSB相移'
        open('LSBxiangyi');sim('LSBxiangyi');
        window=boxcar(length(LSB4.signals(2).values));
        [pxx,f]=periodogram(LSB4.signals(2).values,window,nfft,Fs);
        axes(handles.axes4);
  plot(f,10*log10(pxx),'g-');
        
end
end
% Hint: get(hObject,'Value') returns toggle state of checkbox9


% --- Executes during object creation, after setting all properties.
