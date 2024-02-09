%Andrew Kotarski 
%Virus script

%Run simulations (that is, call your virus function) for a few different values of the 
%probability (for example, 0.25, 0.5, 0.75, 1.0).  Add comments to this script file about what 
%you observe. 


virus(50, .5); 
%Has a ripple like effect
virus(50, .2); 
%Fizzles out pretty quick 
virus(50, .75); 
%Sort of spreads like a parallelogram, at the end a small chunk in the bottom
%left grid beecome infected. Want to see what this chunk turns into. 

virus(100, .75);
%Sort of creates a fractal pattern when days are extened, smaller
%parallelogram from inside the outer. 
