%Spencer Tigere 101001717
%PA 4 - LAPA

row = 20; col =20;
v = zeros(row,col);
v(:,1) = 1;
v(:,col) = 1;
[x,y] = meshgrid(1:20,1:20);

for n = 1:30
    figure(1)
    surf(x,y,v)
    pause(0.2)
    for c = 2: col-1
        for r  = 1: row
            if r == 1
                v(r,c) = 0;
            elseif r == row
                v(r,c) = 0;
            else
                v(r,c) = (v(r-1,c)+v(r+1,c)+v(r,c+1)+v(r,c-1))/4;   
            end
        end   
    end
end

figure(2)
[nx,ny] = gradient(v,1,1);
quiver(x,y,nx,ny)

figure(3)
surf(x,y,vnew)