%% Purpose: Checks board for available spaces

if DBoard(row,col)==0
    available=true;     %Space opened for player 1 or 2
    if mod(counter, 2) == 0 
        available= true;
    end
    if mod(counter, 2) == 0
        DBoard(row,col)=88; %Player 1 is X
    else
        DBoard(row,col)=79; %Player 2 is O
    end
else
    available = false; %Prevent Player 1 or 2 from taking same space
    disp('pick again')
end 