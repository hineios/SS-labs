figure, 
n = -10:10;
y = [z; zi+zp]';
h = stem(n, y);
set(h(1),'MarkerFaceColor','red', 'Marker', 'square');
set(h(2),'MarkerFaceColor','blue');
grid on