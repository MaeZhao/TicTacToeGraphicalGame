%CheckS
if DBoard(row,col)==0
    available=true
    if mod(counter, 2) == 0 %change from counter == 1 to mod(counter, 2) == 0
        available= true
    end
    if mod(counter, 2) == 0
        DBoard(row,col)=88;
    else
        DBoard(row,col)=79;
    end
    
else
    available = false;
    disp('\npick again')
        counter=1
        end 
   
  
   
    
 
   
   
    
        
        
       
    
    
    
        
  
