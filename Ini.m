%% Checks whether characters have won, lost or at a tie
if gameEnd == false;
    play = char(inputdlg("Want to play a game? (y for yes, any other key for no)", 's'));
    if (play == "y")
        P1name = string(inputdlg({'Player 1 Name'}, 'Name', [1 40]));
        P2name = string(inputdlg({'Player 2 Name'}, 'Name', [1 40]));
        DisplayG
        Ini
    else 
        error(ms);
    end
end
play = "";
if gameEnd == true
    pause(3)
    play =char(inputdlg("Want to play another game?(y for yes, any other key for no)", 's'));
    if (play == "y")
        gameEnd = false
        Ini
        
    else
        error(ms);
    end
end