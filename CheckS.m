%CheckS
if DBoard(row,col)==0
<<<<<<< HEAD
    available=true
    if mod(counter, 2) == 0 %change from counter == 1 to mod(counter, 2) == 0
=======
    available= true
    if mod(counter, 2) == 0
>>>>>>> 64569c4011d0fe53996bb3e3ea700c546427317d
        DBoard(row,col)=88;
    else
        DBoard(row,col)=79;
    end
    
else
    available = false;
    disp('\npick again')
        counter=1
        end 
   
  
   
    
 
   
   
    
        
        
       
    
    
    
        
  