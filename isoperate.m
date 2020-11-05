function [res] = isoperate(a)
op = ['+' '-' '*' '/'];

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

