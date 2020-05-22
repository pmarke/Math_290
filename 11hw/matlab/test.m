z = 1:20;

num = 100;
y = (rand(num,1)-0.5)*20;
x = y+z;

f1 = figure(1);
clf;
hold on;
grid on
for ii = 1:length(z)
   
   plot(x(:,ii),y,'-');
   
end

axis([-10,10,-10,10])


filepath = '/home/mark/thinkspace/math_290/11hw/images';

set(f1,'Units','Inches');
pos = get(f1,'Position');
set(f1,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(f1,[filepath,'/20_4'],'-dpdf','-r0')