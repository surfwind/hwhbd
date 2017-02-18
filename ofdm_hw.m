pause(1)

syms t
p=16*sin(t).^3;
q=13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t);
figure('Name','LUV','Numbertitle','off',...
    'WindowStyle','modal','Toolbar','none','MenuBar','none')
m=ezplot(p,q);
set(m,'color',[1 0 0])
set(m,'linewidth',10)
title('Happy Birthday to HW !!!!')
xlabel('')
ylabel('')
hold off

pause(2)
figure('Name','HW','Numbertitle','off','Position', get(0,'ScreenSize'),...
    'WindowStyle','modal','Toolbar','none','MenuBar','none')
x=-5;
y=5;
plot(x,y,'ro')

datax=[4 5 6 7 8 9 10 11 12 13 12 10 8 9 9 9 9 9 9 9 9 8 5 5 6 7 7 6 5 5 4 13 12 12 11 11 12 13 13 2 2 2 2 2 2 2 2 2 2 2 3 4 5 6 7 8 9 10 11 12 13 14 15 15 15 15 15 15 15 15 15 15 15 ...
22 23 23 19 20 21 22 23 24 25 26 27 26 25 25 25 24 24 23 22 21 20 19 20 21 21 22 23 24 25 26 27 27 28 29 30 31 32 33 34 33 32 32 31 30 29 32 32 31 30 29 32 32 31 30 29 ...
40 40 40 39 39 38 37 41 42 43 44 45 46 47 48 49 50 49 44 44 44 44 44 44 44 44 44 44 44 44 44 40 41 42 43 44 45 46 47 48 49 48 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 50 ...
56 56 56 56 56 56 56 56 56 56 56 56 57 58 59 60 61 62 63 64 65 66 65 65 65 65 65 65 65 65 65 65 65 65 65 57 58 59 60 61 62 63 64 65 57 58 59 60 61 62 63 64 65 ...
72 72 72 71 74 74 74 74 74 74 74 74 74 74 74 74 74 74 75 76 76 77 78 79 80 81 82 83 84 83 83 83 83 83 83 75 77 78 79 80 81 82 83 84 85 79 79 79 79 79 79 79 79 79 78 78 77 76 80 81 82 83 84 84 85 ...
92 91 90 89 90 91 92 93 94 95 96 97 98 99 100 100 100 100 100 99 98 97 96 95 95 95 95 95 94 94 93 92 91 ...
106 107 108 109 107 108 107 108 107 108 107 108 107 108 107 108 107 108 107 108 107 108 107 108 107 108 107 108 106 107 108 109 109 110 110 111 111 112 112 113 113 114 114 115 115 116 114 115 116 117 111 112 112 113 113 114 114 115 115 116 116 117 115 116 117 118 ...
123 123 123 124 124 125 125 126 127 128 129 130 131 132 132 133 133 134 134 134 128 129 128 129 128 129 128 129 128 129 128 129 128 129 128 129 128 129 128 129 128 129 127 128 129 130 125 126 127 128 129 130 131 132 ...
139 140 141 142 140 141 140 141 141 142 142 143 143 144 144 145 146 147 147 148 148 149 149 150 150 151 150 151 149 150 151 152 145 146 145 146 145 146 145 146 145 146 144 145 146 147 142 143 144 145 146 147 148 149];
datay=[-2 -2 -2 -2 -2 -2 -2 -2 -2 -2 -1 -3 -4 -4 -5 -6 -7 -8 -9 -10 -11 -12 -5 -6 -6 -7 -9 -10 -10 -11 -11 -5 -5 -6 -7 -9 -10 -10 -11 -4 -5 -6 -7 -8 -9 -10 -11 -12 -13 -14 -13 -13 -13 -13 -13 -13 -13 -13 -13 -13 -13 -13 -4 -5 -6 -7 -8 -9 -10 -11 -12 -13 -14 ...
-1 -2 -3 -4 -4 -4 -4 -4 -4 -4 -4 -4 -3 -5 -6 -7 -8 -9 -10 -11 -12 -13 -14 -6 -7 -8 -9 -10 -11 -12 -13 -13 -14 -14 -14 -14 -14 -14 -14 -14 -13 -1 -2 -2 -3 -4 -5 -6 -6 -7 -8 -9 -10 -10 -11 -12 ...
-18 -19 -20 -20 -21 -22 -23 -20 -20 -20 -20 -20 -20 -20 -20 -20 -20 -19 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -24 -24 -24 -24 -24 -24 -24 -24 -24 -24 -23 -29 -29 -29 -29 -29 -29 -29 -29 -29 -29 -29 -29 -29 -29 -29 -28 ...
-19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -19 -19 -19 -19 -19 -19 -19 -19 -19 -19 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -24 -24 -24 -24 -24 -24 -24 -24 -24 -29 -29 -29 -29 -29 -29 -29 -29 -29 ...
-20 -21 -22 -23 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -20 -21 -22 -20 -20 -20 -20 -20 -20 -20 -20 -19 -20 -21 -22 -23 -24 -24 -24 -24 -24 -24 -24 -24 -24 -24 -24 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -26 -27 -28 -29 -30 -29 -29 ...
-20 -21 -22 -23 -23 -23 -23 -23 -23 -23 -23 -23 -23 -23 -23 -24 -25 -26 -27 -28 -29 -29 -28 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 ...
-33 -33 -33 -33 -34 -34 -35 -35 -36 -36 -37 -37 -38 -38 -39 -39 -40 -40 -41 -41 -42 -42 -43 -43 -44 -44 -45 -45 -46 -46 -46 -46 -39 -39 -38 -39 -38 -38 -37 -37 -36 -36 -35 -35 -34 -34 -33 -33 -33 -33 -40 -40 -41 -41 -42 -42 -43 -43 -44 -44 -45 -45 -46 -46 -46 -46 ...
-33 -34 -35 -33 -34 -33 -34 -33 -33 -33 -33 -33 -33 -33 -34 -33 -34 -33 -34 -35 -34 -34 -35 -35 -36 -36 -37 -37 -38 -38 -39 -39 -40 -40 -41 -41 -42 -42 -43 -43 -44 -44 -45 -45 -45 -45 -46 -46 -46 -46 -46 -46 -46 -46 ...
-33 -33 -33 -33 -34 -34 -35 -35 -36 -36 -37 -37 -38 -38 -39 -39 -39 -39 -38 -38 -37 -37 -36 -36 -35 -35 -34 -34 -33 -33 -33 -33 -40 -40 -41 -41 -42 -42 -43 -43 -44 -44 -45 -45 -45 -45 -46 -46 -46 -46 -46 -46 -46 -46];

for i=1:length(datax)
    x=[x datax(i)];
    y=[y datay(i)];
    drawnow
    pause(0.015)
    plot(x,y,'ro')
end

x=[x 154];
y=[y -51];
drawnow
pause(0.015)
plot(x,y,'ro')


hFig = figure('Name','HWwwww',...
    'Numbertitle','off',...
    'Position', get(0,'ScreenSize'),...
    'WindowStyle','modal',...
    'Color','black',...
    'Toolbar','none',...
    'MenuBar','none');
img = imread('http://140.xxx.26.79/ftp/hw01.jpg');
fpos = get(hFig,'Position');
axOffset = (fpos(3:4)-[size(img,2) size(img,1)])/2;
ha = axes('Parent',hFig,'Units','pixels',...
            'Position',[axOffset size(img,2) size(img,1)]);
set(gca,'Color','black')
pause(5)
hImshow = imshow(img,'Parent',ha);

%{
figure('Name','HWwwww','Numbertitle','off','Position', get(0,'ScreenSize'),...
    'WindowStyle','modal','Color','black','Toolbar','none','MenuBar','none')
%set(gcf,'Position',get(0,'ScreenSize'))
%set(gcf,'ToolBar','none')
%set(gcf,'MenuBar','none')
%set(gcf,'Numbertitle','off')
%set(gcf,'Color','black')
set(gca,'Color','black')
%hw00=imread('http://140.xxx.26.79/ftp/hw00.jpg');
hw01=imread('http://140.xxx.26.79/ftp/hw01.jpg');
%hw02=imread('http://140.xxx.26.79/ftp/hw02.jpg');
%hw03=imread('http://140.xxx.26.79/ftp/hw03.jpg');
pause(5);
%imshow(hw00);
imshow(hw01);
%imshow(hw02);
%imshow(hw03);
%}