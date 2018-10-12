%% Displays graphical version of TicTacToe
clear
clc
load TicTacToe
figure('WindowStyle', 'docked');
imshow([Board{1,:};Board{2,:};Board{3,:}]);