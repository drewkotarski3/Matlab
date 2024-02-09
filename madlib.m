% Andrew Kotarski 
% 10/02/2022
% Madlib script


display(' It was a (one) November day  ');
one = input('one ', 's');

display( ' I woke up to the smell of (two) '); 
two = input('two ', 's');
display(' That smell was so (three)'); 
three = input('three', 's');
display(' Then I thought I will have a (four) day')
four = input('four ', 's');


fprintf([' It was a %s November day \n ' ...
           ' I woke up to the smell of %s \n' ...
            ' That smell was so %s \n' ...
            'Then I thought I will have a %s day '], one, two, three, four); 