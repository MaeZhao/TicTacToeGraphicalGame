clear
clc

values = input ('Please enter the values you want to sort (seperate each value with a space) \n');
len = length(values);

endsort=false;

while endsort==false      
    for i=2:len
              if values(i) < values(i-1) % compare two values and switch if left one is smaller
            
                  FNum = values (i-1);
                  SNum = values (i);
        
                  TempNum=FNum;
                  FNum=SNum;
                  SNum=TempNum;
                  values(i) = SNum;
                  values (i-1) = FNum;
                  endsort=true;
              end
    end
    for i=2:len
        if values(i)<values(i-1)
            endsort =  false;
        end
    end
end

display = [ 'Your sorted values are: \n', num2str(values)];

disp(display)
