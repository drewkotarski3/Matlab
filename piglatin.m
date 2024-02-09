word = input("what word? ", 's'); %input
word = lower(word);   %makes all inputs lowercase
switch word(1)
    case {'a','e','i','o','u'}  %case for vowels
        newword = [word, 'ay'];
    otherwise                           %case for non vowels
        newword = [word(2:end), word(1), 'ay'];
end
display(newword);