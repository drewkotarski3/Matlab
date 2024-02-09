%Andrew Kotarski
%Virus modeling 


function virus(days,prob)
grid1 = zeros(100);  %intialize grid 1
grid1(50,50) = 1;     %Patient 0
grid2 = zeros(100);     %intialize grid 2
for n = 1:days          %Outer loop for number of days
    for i = 2:length(grid1) -1    % for loop excluding outers
        for j = 2:length(grid1) -1 % for loop excluding outers

            if grid1(i,j) == 0   %if a grid is Susceptible
                if (grid1(i+1,j) == 1 ) || (grid1(i-1, j) == 1) || ( grid1(i, j+1) ==1) || (grid1(i, j-1) == 1) || ...
                        (grid1(i+1,j) == 2) || (grid1(i-1, j) == 2) || ( grid1(i, j+1) ==2) || (grid1(i, j-1) == 2)
                    %determine if a neighbor is infectious

                    if rand(1) <= prob    %Probability to determine if susceptible individal becomes infected
                        grid2(i,j) = 1;
                    end
                end
            elseif grid1(i,j) >= 1 && grid1(i,j)<= 6   %Individuals are no longer susceptble
                grid2(i,j) = grid1(i,j) +1;  
            else
                grid2(i,j) = 0;  %after day 7 individuals lose immunity 
            end

        end
      
    end
    displayGrid(grid2);   %display grid
    pause(.1); 
    grid1 = grid2;   %Feed grid2 data into gird 1 

end
end
