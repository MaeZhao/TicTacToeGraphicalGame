%% STARTS Game 
clear
clc
warning('off','all')
warning
load Variables 
newDBoard = DBoard; %save a cleared digital board to call when a new game is played
newGBoard = GBoard; %save a cleared graphical board to call when a new game is played
gameEnd = false; 
Ini