% Check row for P1 win
winCount = P1win + P2win;     
for i = 1:3
    if sum(DBoard(i,:)==P1const*ones (1,3))== 3
       
        P1win = P1win+1;
        fprintf ('%s wins',P1name)
       
        
    end
     

% Check columns for P1 win

    if sum(DBoard(:,i)==P1const*ones (1,3))== 3
       
        P1win = P1win+1;
       fprintf ('%s wins', P1name)
    end
    


% Check row for P2 win

    if sum(DBoard(i,:)==P2const*ones (1,3))== 3
       
        P2win =P2win + 1;
        fprintf ('%s wins',P2name)
    end
     


% Check columns for P2 win

    if sum(DBoard(:,i)==P2const*ones (1,3))== 3
       
        P2win =P2win + 1;
        fprintf ('%s wins',P2name)
    end
    

% Check diag for P1 win

    if i==1 && sum (diag(DBoard)==P1const*ones(3,1))==3 
        P1win =P1win + 1;
        fprintf ('%s wins',P1name)
        
    end  
 
    if DBoard(1,3) == 88 && DBoard (2,2)==88 && DBoard (3,1) ==88
        P1win =P1win + 1;
        fprintf ('%s wins',P1name)
    end
    
 % Check diag for P2 win

    if i==1 && sum (diag(DBoard)==P2const*ones(3,1))==3 
        P2win =P2win + 1;
        fprintf ('%s wins',P2name)
    end  
 
    if DBoard(1,3) == 79 && DBoard (2,2)==79 && DBoard (3,1) ==79
        P2win =P2win + 1;
        fprintf ('%s wins',P2name);
    end
    if winCount < (P1win + P2win)
        gameEnd = true;
        Ini
    end
end
    