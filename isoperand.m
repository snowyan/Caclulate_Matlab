function [res] = isoperand(a)
op = ['1' '2' '3' '4''5' '6' '7' '8','9','0'];

res = 0;
for i=1:1:length(op)
    if(a == op(i))
        res =1;
        return;
    else
        res = 0;
    end
end
end
