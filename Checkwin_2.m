%% Purpose: Checks who wins

winCount = P1win + P2win;
for i = 1:3
    if sum(DBoard(i,:)==P1const*ones (1,3))== 3  % Check row for P1 win
        P1win = P1win+1;
        message=P1name+' wins';
        msgbox ( message, 'Winner')
        break

    elseif sum(DBoard(:,i)==P1const*ones (1,3))== 3 % Check columns for P1 win
        P1win = P1win+1;
        message=P1name+' wins';
        msgbox ( message, 'Winner')
        break

    elseif sum(DBoard(i,:)==P2const*ones (1,3))== 3 % Check row for P2 win
        P2win =P2win + 1;
        message=P2name+' wins';
        msgbox ( message, 'Winner')
        break

    elseif sum(DBoard(:,i)==P2const*ones (1,3))== 3 % Check columns for P2 win
        P2win =P2win + 1;
        message=P2name+' wins';
        msgbox ( message, 'Winner')
        break

    elseif i==1 && sum (diag(DBoard)==P1const*ones(3,1))==3 % Check diag for P1 win
        P1win =P1win + 1;
        message=P1name+' wins';
        msgbox ( message, 'Winner')
        break
        
    elseif DBoard(1,3) == 88 && DBoard (2,2)==88 && DBoard (3,1) ==88 % Check diag for P1 win
        P1win =P1win + 1;
        message=P1name+' wins';
        msgbox ( message, 'Winner')
        break

    elseif i==1 && sum (diag(DBoard)==P2const*ones(3,1))==3 % Check diag for P2 win
        P2win =P2win + 1;
        message=P2name+' wins';
        msgbox ( message, 'Winner')
        break
        
    elseif DBoard(1,3) == 79 && DBoard (2,2)==79 && DBoard (3,1) ==79 % Check diag for P2 win
        P2win =P2win + 1;
        message=P2name+' wins';
        msgbox ( message, 'Winner');
        break
    end
end
% Check for a win to end the game
if winCount < (P1win + P2win)&& stop == false % if the game is stopped will not continue 
    gameEnd = true;
    pause(2);
    message=P1name+ ' won ' + P1win + ' points, ' + P2name + ' won '...
                                + P2win + ' points.';
    msgbox ({'Points:' ; message}) 
    Ini %calls Ini to ask if player wants to replay
% Check tie
elseif counter >= 9 && stop == false % if the game is stopped will not continue
    message='Tie between ' + P1name+ ' & ' + P2name;
    msgbox ( message, 'Tie')
    pause(2);
    message=P1name+ ' won ' + P1win + ' points, ' + P2name + ' won '...
                                    + P2win + ' points.';
    msgbox ({'Points:' ; message}) 
    pause(2)
    gameEnd = true;
    Ini %calls Ini to ask if player wants to replay
end
