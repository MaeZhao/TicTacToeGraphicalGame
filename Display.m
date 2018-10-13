clear
clc
%%CHANGE VARIABLE VALUES
load TicTacToe
figure('WindowStyle', 'docked');
imshow([Board{1,:};Board{2,:};Board{3,:}]);
counter = false; %temp
stop = false; %temp
while (stop==false)
    if mod(counter, 2) == 0
        [x,y] = ginput(1);
        row = floor(y/123)+1;
        col = floor(x/138)+1;
        CheckS
        Board {row, col} = X;
        counter = counter + 1;
    else
        [x,y] = ginput(1);
        row = floor(y/123)+1;
        col = floor(x/138)+1;
        CheckS
        Board {row, col} = O;
        counter = counter + 1;
    end
    imshow([Board{1,:};Board{2,:};Board{3,:}]); %% MUST USE THIS TO UPDATE
    CheckWin
end
