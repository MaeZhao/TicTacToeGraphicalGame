%% Checks whether characters have won, lost or at a tie
clear
clc
load Variables 
repeat = true;
while(repeat == true)
    P1name = input("Player one input your name:\n", "s");
    P2name = input("Player two input your name:\n", "s");
    DisplayG
    
    play = input("Want to play again?(Y for yes, any other key for no)\n", 's');
    if (play == "y")
        repeat = true;
    else
        repeat = false;
    end 
end