%Write data to file
fid = fopen('newton_data.xlsx','r');

T = table2array(readtable('newton_data.xlsx')); 

SurroundingTemp = 25; 
k  = 0.0426; 
Time = T(:, 1);
Temp  = T(:,2); 
IntialTemp = Temp(1); 

Cooling = SurroundingTemp + (IntialTemp - SurroundingTemp).*exp(-k.*Time); 

Error = Temp - Cooling; 



Changes = [T, Cooling, Error]; 


display(Changes); 









fclose(fid); 

