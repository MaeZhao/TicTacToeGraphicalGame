%% CheckS Checks whether or not a space is availible
if DBoard(row,col)==0
    available=true;
    if mod(counter, 2) == 0 %change from counter == 1 to mod(counter, 2) == 0
        available= true;
    end
    if mod(counter, 2) == 0
        DBoard(row,col)=88;
    else
        DBoard(row,col)=79;
    end
else
    available = false;
<<<<<<< HEAD
    disp('pick again')
end 
=======
    msgbox('Pick Again', 'Sorry', 'error')
    pause (1)
    
        counter=1;
        end 
>>>>>>> 940b23662694b7876f3362f4eb0566f376f53dfc
   
  
   
    
 
   
   
    
        
        
       
    
    
    
        
  
