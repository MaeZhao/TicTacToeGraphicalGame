%% Display and triggers CheckS and Checkwin
if stop == false % if the game is stopped will not update
    figure('WindowStyle', 'modal'); 
    imshow([GBoard{1,:};GBoard{2,:};GBoard{3,:}]); %Display graphical board
    counter = 0; % counts the number of plays
while (stop == false)
    if mod(counter, 2) == 0 % if counter is even, it is the X turn
        [x,y] = ginput(1);
        row = floor(y/123)+1;
        col = floor(x/138)+1;
        CheckS %Check if the space is available 
        if available == true
            GBoard {row, col} = X;
            counter = counter + 1;
        end
    else
        [x,y] = ginput(1);  % else it is the O turn
        row = floor(y/123)+1;
        col = floor(x/138)+1;
        CheckS %Check if the space is available 
          if available == true
            GBoard {row, col} = O;
            counter = counter + 1;
          end
    end
    imshow([GBoard{1,:};GBoard{2,:};GBoard{3,:}]); %displays the Graphical board after O or X is inputted
    Checkwin_2
end
end