m           = 101; % size of A
m2          = m*m;
length      = 1;
direction   = 1; % 1:R, 2:U, 3:L, 4:D
A           = zeros(m, m);
x           = ceil(m/2);
y           = x;
ind         = 1;
A(y, x)     = ind;
while (ind < m2)
        for i = 1:2
            for j = 1:length
                ind = ind + 1;
                if (ind > m2), break; end
                switch direction
                    case 1
                        x = x + 1;
                    case 2
                        y = y - 1;
                    case 3
                        x = x - 1;
                    case 4
                        y = y + 1;
                end
                A(y, x) = ind;
            end
            if (ind > m2), break; end
            direction = mod(direction, 4) + 1;
        end
        length = length + 1;
end
B = isprime(A);
imagesc(B);
axis equal;
axis off;
