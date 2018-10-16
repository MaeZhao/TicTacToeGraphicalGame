%% Checks whether characters have won, lost or at a tie
if gameEnd == false
    play = char(inputdlg("Want to play a game? (y for yes, any other key for no)", 'New Game'));
    if (play == "y")
        DBoard = newDBoard;
        GBoard = newGBoard;
        P1name = string(inputdlg({'Player 1 Name'}, 'Name', [1 40]));
        P2name = string(inputdlg({'Player 2 Name'}, 'Name', [1 40]));
        DisplayG
        Ini
    else 
        error(ms);
    end
end

if gameEnd == true
    pause(1)
    play =char(inputdlg("Want to play another game?(y for yes, any other key for no)", 'Play Again?'));
    if (play == "y")
        DBoard = newDBoard;
        GBoard = newGBoard;
        gameEnd = false
        DisplayG
    else
        error(ms);
    end
end