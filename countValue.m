function [res] = countValue(a,b,operator)
op = ['+' '-' '*' '/'];

if(isnumeric(a))
   numberA = a;
else
    numberA = str2num(a);
end
if(isnumeric(b))
    numberB =b;
else
    numberB = str2num(b);
end

if(operator == op(1))
   res =numberA + numberB;
   
else if(operator == op(2))
    res = numberA - numberB;
   
   
    else if (operator == op(3))
        res = numberA * numberB;   
        else if (operator == op(4))
          res = numberA / numberB ;     
        end
        end
    end
end
end

