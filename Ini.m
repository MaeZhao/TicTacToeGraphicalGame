%% Checks whether characters have won, lost or at a tie
if gameEnd == false
    play = input("Want to play a game?(y for yes, any other key for no)\n", 's');
    if (play == "y")
        P1name = input("Player one input your name:\n", "s");
        P2name = input("Player two input your name:\n", "s");
        DisplayG
        Ini
    else 
        quit;
    end
end
play = ""
if gameEnd == true
    play = input("Want to play another game?(y for yes, any other key for no)\n", 's');
    if (play == "y")
        Ini
    else
        exit;
    end
end