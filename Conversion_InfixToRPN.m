function [RPN] = Conversion_InfixToRPN(infix)
RPN = [];

U = infix;
m = length(U);

Stack = [];

arraycontinuenumber = [];

i = 1;
while(i<= m)
    if(isoperand(U(i)))
        
        j=i;
        %if the number is larger, connect the number tegother.
        while(j<=m & isoperand(U(j)))
          arraycontinuenumber = [arraycontinuenumber U(j)];
          j = j +1;
        end
        i = j;
        number = str2num(arraycontinuenumber);
        RPN = [RPN num2str(number) ' '];
        arraycontinuenumber = [];
        if(i > m) %out of the array range
            break;
        end
        continue;
    else if(U(i) == '(')
        Stack = pushStack(Stack,U(i));
    else if(U(i) == ')')
        [Stack,popedValue] = popStach(Stack);
        while( popedValue ~='(' & popedValue~=-1)
          RPN = [RPN,popedValue,' '];
          [Stack,popedValue] = popStach(Stack);
        end
    else if(isoperate(U(i)))
        j = length(Stack);
        while( j~=0 & Stack(j)~='('& checkoperate(U(i),Stack(j)) ==1 )
          RPN = [RPN,Stack(j),' '];
          [Stack,popedValue] = popStach(Stack);
          j = length(Stack);
        end
        Stack = pushStack(Stack,U(i));
    else
      %errordlg('the infix include other error string','inout string is Error');       
    end
        end
        end
    end
    i = i+1;
%end
end
while(length(Stack)~=0)
      [Stack,popedValue] = popStach(Stack);
      RPN = [RPN,' ',popedValue];
end




