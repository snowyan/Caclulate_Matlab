function [res] = checkoperate(a,b)
op = ['+' '-' '*' '/'];

if(a == b)
    res = 0;
    return
end

if( a == op(3) | a == op(4))
    if(b == op(1) | b== op(2))
        res = 1;
    else (b== op(3) | b== op(4))
        res = 0;
    end
    
else if (a == op(1) | a == op(2))
     if(b == op(1) | b== op(2))
        res = 0;
    else (b== op(3) | b== op(4))
        res = -1;
     end  
    end
end
end

