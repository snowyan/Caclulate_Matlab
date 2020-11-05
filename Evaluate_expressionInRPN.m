function [res] = Evaluate_expressionInRPN(V)

n = length(V);

Vstack = [];
arraycontinuenumber = [];

i = 1;
while (i<= n)
  if(isoperate(V(i)) == 1)
       [Vstack,popedValue1] = popStach(Vstack);
       [Vstack,popedValue2] = popStach(Vstack);
       res = countValue( popedValue2,popedValue1,V(i));
       Vstack = pushStack(Vstack,res)
  else 
        if(V(i) ~= ' ')
            j = i;
            %if the number is larger, connect the number tegother
            while(V(j)~= ' ')
               arraycontinuenumber = [arraycontinuenumber V(j)];
                j = j+1;
            end
            Vstack = pushStack(Vstack,str2num(arraycontinuenumber));
            arraycontinuenumber = [];
            i = j;
            continue;
        end
  end
  i = i+1;
end

end

