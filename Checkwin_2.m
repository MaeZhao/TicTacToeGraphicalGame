% Check row for P1 win
winCount = P1win + P2win;     
% Check tie
if counter >= 9
    message='Tie between ' + P1name+ ' & ' + P2name;
    msgbox ( message, 'Tie')
    pause(1);
    message=P1name+ ' won ' + P1win + ' points, ' + P2name + ' won ' + P2win + ' points.';
    msgbox ( message, 'Points') 
    gameEnd = true;
    Ini
end
for i = 1:3
    if sum(DBoard(i,:)==P1const*ones (1,3))== 3
       
        P1win = P1win+1;
        message=P1name+' wins';
       msgbox ( message, 'Winner')
    end
     

% Check columns for P1 win

    if sum(DBoard(:,i)==P1const*ones (1,3))== 3
       
        P1win = P1win+1;
        message=P1name+' wins';
       msgbox ( message, 'Winner')
    end
    


% Check row for P2 win

    if sum(DBoard(i,:)==P2const*ones (1,3))== 3
       
        P2win =P2win + 1;
         message=P2name+' wins';
       msgbox ( message, 'Winner')
    end
  

% Check columns for P2 win

    if sum(DBoard(:,i)==P2const*ones (1,3))== 3
       
        P2win =P2win + 1;
         message=P2name+' wins';
       msgbox ( message, 'Winner')
    end
    

% Check diag for P1 win

    if i==1 && sum (diag(DBoard)==P1const*ones(3,1))==3 
        P1win =P1win + 1;
         message=P1name+' wins';
       msgbox ( message, 'Winner')
        
    end  
 
    if DBoard(1,3) == 88 && DBoard (2,2)==88 && DBoard (3,1) ==88
        P1win =P1win + 1;
         message=P1name+' wins';
       msgbox ( message, 'Winner')
    end
    
 % Check diag for P2 win

    if i==1 && sum (diag(DBoard)==P2const*ones(3,1))==3 
        P2win =P2win + 1;
         message=P2name+' wins';
       msgbox ( message, 'Winner')
    end  
 
    if DBoard(1,3) == 79 && DBoard (2,2)==79 && DBoard (3,1) ==79
        P2win =P2win + 1;
         message=P2name+' wins';
       msgbox ( message, 'Winner');
    end
% Check win
    if winCount < (P1win + P2win)
        gameEnd = true;
        pause(1);
        message=P1name+ ' won ' + P1win + ' points, ' + P2name + ' won ' + P2win + ' points.';
        msgbox ( message, 'Points') 
        Ini
    end
end
    