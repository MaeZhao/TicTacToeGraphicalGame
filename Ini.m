%% Purpose: Checks whether characters have won, lost or at a tie
while(stop == false) 
if gameEnd == false %runs bc Ini initailizes stop to false
    play = char(inputdlg("Want to play a game of TicTacToe? (y for yes, any other key for no)", 'New Game'));
    if (play == "y" || play == "Y")
        DBoard = newDBoard; %set the Boards to the cleared version to start each game
        GBoard = newGBoard;
        P1name = string(inputdlg({'Player 1 Name'}, 'Name', [1 40])); %create a variable string for the player names
        P2name = string(inputdlg({'Player 2 Name'}, 'Name', [1 40]));%create a variable string for the player names
        DisplayG
% Game-Over
    else %if input is anything but "Y" or "y" the game is over
        msgbox({'Game Over', 'Thank you for playing our game'})
        close all hidden
        stop = true; % prevents DisplayG loop from running
    end 
elseif gameEnd == true || stop == false 
    pause(2)  %The message boxes stays up for 2 seconds
    play =char(inputdlg("Want to play another game?(y for yes, any other key for no)", 'Play Again?'));
    close all hidden
    if (play == "y" || play == "Y")
        DBoard = newDBoard; %save a cleared new board to call when a digital board is call
        GBoard = newGBoard; %save a cleared new board to call when a graphical board played 
        gameEnd = false; %When no game has been won
        DisplayG
% Game-Over
    else
        pause (1) %Message boxes stays up for 1 seconds
        msgbox({'Game Over', 'Thank you for playing our game'})
     
        stop = true; % prevents DisplayG loop from running
    end
end
end