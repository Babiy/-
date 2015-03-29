function varargout = Kursovaja(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Kursovaja_OpeningFcn, ...
                   'gui_OutputFcn',  @Kursovaja_OutputFcn, ...
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
function Kursovaja_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
function varargout = Kursovaja_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
function edit1_Callback(hObject, eventdata, handles)
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit2_Callback(hObject, eventdata, handles)
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit3_Callback(hObject, eventdata, handles)
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit4_Callback(hObject, eventdata, handles)
function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit5_Callback(hObject, eventdata, handles)
function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function inform_Callback(hObject, eventdata, handles)
global inform % объявляем глобально.  
[nombre direc]=uigetfile('*.xlsx','inform'); % делаем путь с помощью функции uigetfile.
inform=strcat(direc,nombre); % имя файла, который вызываем.
M=xlsread(inform); % открываем экселевский файл с помощью xlsread.
x=M(1,:); % сохраняем первую строку.
y=M(2,:); % сохраняем вторую строку.
N=length(x); % определяем количество точек.
xx=linspace(min(x),max(x),100); % формируем линейный массив размера 1x100 от минимального к максимальному.
% Создаем матрицу степеней х
for i=1:N 
    for j=1:N
        A(i,j)=x(i)^(N-j);
    end
end
B=y'; % вектор столбец правой части.
P=A\B; % считаем коэффициенты многочлена.
yy=polyval(P,xx); % вычисляем функцию в новых точках.
plot(handles.axes1,x,y,'or');
axis tight
xlabel('x') % подписываем ось x.
ylabel('y') % подписываем ось y.
function pushbutton1_Callback(hObject, eventdata, handles)
global inform 

a=str2double(get(handles.edit1,'String')); 
b=str2double(get(handles.edit2,'String'));
M=xlsread(inform); % открываем экселевский файл с помощью xlsread.
x=M(1,:); % сохраняем первую строку.
y=M(2,:); % сохраняем вторую строку.
N=length(x); % определяем количество точек.
xx=linspace(min(x),max(x),100); % формируем линейный массив размера 1x100 от минимального к максимальному.
% Создаем матрицу степеней х
for i=1:N 
    for j=1:N
        A(i,j)=x(i)^(N-j);
    end
end
B=y'; % вектор столбец правой части.
P=A\B; % считаем коэффициенты многочлена.
yy=polyval(P,xx); % вычисляем функцию в новых точках.

% Выводим график узлов интерполяции
plot(handles.axes1,x,y,'or');
axis tight
xlabel('x') % подписываем ось x.
ylabel('y') % подписываем ось y.

% Выводим график интерполянты и узлов интерполяции
plot(handles.axes2,xx,yy,'g',x,y,'or'); % вывод узлов интерполяции, исходной функции и графика полинома (интерполянты). 
axis tight % устанавливаем диапазоны координат по осям в соответствии с диапазонами изменения данных.
xlabel('x') % подписываем ось x.
ylabel('y') % подписываем ось y.

% Выводим график интерполянты с интервалом.
plot(handles.axes3,xx,yy,'g',x,y,'or');  % выводим в графическом виде интерполянту в интервале [a b].
axis tight
xlim([a b])

function pushbutton2_Callback(hObject, eventdata, handles)
cla (handles.axes1,'reset') % стираем нарисованные графики. 
cla (handles.axes2,'reset') 
cla (handles.axes3,'reset')
set(handles.edit1,'String',[]) % стираем вводные и выводные данные. 
set(handles.edit2,'String',[])

function pushbutton3_Callback(hObject, eventdata, handles)
clc; close all;

function listbox1_Callback(hObject, eventdata, handles)
function axes3_CreateFcn(hObject, eventdata, handles)
function pushbutton4_Callback(hObject, eventdata, handles)
function edit6_Callback(hObject, eventdata, handles)
function edit6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function axes1_CreateFcn(hObject, eventdata, handles)

function pushbutton5_Callback(hObject, eventdata, handles)
saveas(handles.axes1,'Graphik1.bmp') % сохраняем все в формате bmp (делаем скрин).


% --- Executes on button press in informy.
function informy_Callback(hObject, eventdata, handles)
% hObject    handle to informy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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
