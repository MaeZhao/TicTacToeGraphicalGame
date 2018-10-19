clear
clc

values = input ('Please enter the values you want to sort (seperate each value with a space and enclose in all square bracets [ ] ) \n ex. [ 5 3 6 7 2 1] \n Your values:');
len = length(values);

endsort=false;

while endsort==false %if endsort is true code will end
    for i=2:len
              if values(i) < values(i-1) % compare two values and switch if left one is smaller
            
                  FNum = values (i-1);
                  SNum = values (i);
        
                  TempNum=FNum;
                  FNum=SNum;
                  SNum=TempNum;
                  values(i) = SNum;
                  values (i-1) = FNum;
                  endsort=true; %after the switch end is true
              end
    end
    for i=2:len
        if values(i)<values(i-1) %change end from true to false if there is a value to be switched
            endsort =  false;
        end
    end
end

display = [ 'Your sorted values are: ', num2str(values)];

disp(display)
