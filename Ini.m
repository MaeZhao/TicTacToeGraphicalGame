%% Checks whether characters have won, lost or at a tie
if gameEnd == false;
    play = input("Want to play a game?(y for yes, any other key for no)\n", 's');
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
    play = input("\nWant to play another game?(y for yes, any other key for no)\n", 's');
    if (play == "y")
        Ini
    else
        error(ms);
    end
end