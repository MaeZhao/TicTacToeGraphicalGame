%% Checks whether characters have won, lost or at a tie
while(stop == false)
if gameEnd == false
<<<<<<< HEAD
    play = char(inputdlg("Want to play a game of TicTacToe? (y for yes, any other key for no)", 'New Game'));
=======
    play = char(inputdlg("Want to play a game? (y for yes, any other key for no)", 'New Game'));
>>>>>>> 940b23662694b7876f3362f4eb0566f376f53dfc
    if (play == "y" || play == "Y")
        DBoard = newDBoard;
        GBoard = newGBoard;
        P1name = string(inputdlg({'Player 1 Name'}, 'Name', [1 40]));
        P2name = string(inputdlg({'Player 2 Name'}, 'Name', [1 40]));
        DisplayG
% Game-Over
    else 
<<<<<<< HEAD
        msgbox({'Game Over', 'Thank you for playing our game'})
        pause (3)
        stop = true; % prevents DisplayG from exe. checkWin
        close all hidden
    end 
elseif gameEnd == true || stop == false
=======
        msgbox({'Game Over', 'Thank You'})
        pause (1)
    end
end

if gameEnd == true
>>>>>>> 940b23662694b7876f3362f4eb0566f376f53dfc
    pause(2)
    play =char(inputdlg("Want to play another game?(y for yes, any other key for no)", 'Play Again?'));
    if (play == "y" || play == "Y")
        DBoard = newDBoard;
        GBoard = newGBoard;
        gameEnd = false 
        DisplayG
% Game-Over
    else
<<<<<<< HEAD
        msgbox({'Game Over', 'Thank you for playing our game'})
        pause (3)
        stop = true; % prevents DisplayG from exe. checkWin
        close all hidden
=======
        msgbox({'Game Over', 'Thank You'})
        pause (1)
>>>>>>> 940b23662694b7876f3362f4eb0566f376f53dfc
    end
end
end