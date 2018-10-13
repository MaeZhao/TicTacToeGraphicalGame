% Check row for P1 win
       
for i = 1:3
    if sum(Dboard(i,:)==P1const*ones (1,3))== 3
       
        P1win = 1;
        disp ('Player 1 wins')
    end
     


% Check columns for P1 win

    if sum(Dboard(:,1)==P1const*ones (1,3))== 3
       
        P1win = 1;
        disp ('Player 1 wins')
    end
    



% Check row for P2 win

    if sum(Dboard(i,:)==P2const*ones (1,3))== 3
       
        P2win = 1;
        disp ('Player 2 wins')
    end
     


% Check columns for P2 win

    if sum(Dboard(:,1)==P2const*ones (1,3))== 3
       
        P2win = 1;
        disp ('Player 2 wins')
    end
    

% Check diag for P1 win

    if i==1 && sum (diag(Dboard)==P1const*ones(3,1))==3 
        disp('Player 1 wins')
        
    end  
 
    if Dboard(1,3) == 88 && Dboard (2,2)==88 && Dboard (3,1) ==88
        disp ('Player 1 wins')
    end
    
 % Check diag for P2 win

    if i==1 && sum (diag(Dboard)==P2const*ones(3,1))==3 
        disp('Player 2 wins')
    end  
 
    if Dboard(1,3) == 79 && Dboard (2,2)==79 && Dboard (3,1) ==79
        disp ('Player 2 wins')
    end
    

end
    