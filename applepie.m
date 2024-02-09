function z =  applepie(nums) 
[a,b] = max(nums(nums(2:end) - nums(1:end-1))); 
z = [b,b+1];
 end 
 
