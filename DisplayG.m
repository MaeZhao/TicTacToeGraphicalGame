
%%CHANGE VARIABLE VALUES
load TicTacToe
figure('WindowStyle', 'docked');
imshow([GBoard{1,:};GBoard{2,:};GBoard{3,:}]);
counter = 0; %temp
stop = false; %temp
while (stop==false)
    if mod(counter, 2) == 0 %error in counter when availiable is false turn is skipped
        [x,y] = ginput(1);
        row = floor(y/123)+1;
        col = floor(x/138)+1;
        CheckS
        if available == true
            GBoard {row, col} = X;
            counter = counter + 1;
        end
    else
        [x,y] = ginput(1);
        row = floor(y/123)+1;
        col = floor(x/138)+1;
        CheckS
          if available == true
            GBoard {row, col} = O;
            counter = counter + 1;
          end
    end
    imshow([GBoard{1,:};GBoard{2,:};GBoard{3,:}]); %% MUST USE THIS TO UPDATE
    Checkwin_2
end
