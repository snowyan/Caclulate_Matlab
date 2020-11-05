function [res] = rpn_calc(express)

RPN = Conversion_InfixToRPN(express);

disp('In RPN notation:');
disp(RPN);

res = Evaluate_expressionInRPN(RPN);

disp('Result of evaluation:');
disp(res);
end

