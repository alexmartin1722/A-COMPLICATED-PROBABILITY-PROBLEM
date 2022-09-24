%Author: Alex Martin
%
%Date: 9/22/22


function caseA1(N)
%the probability of 1 hit
%P(1) = \frac{1}{N} SUM^N_{n=2} \frac{1}{n-1}

% sum = 0.0;
% for n = 2:N
%     sum = sum + (1/(n-1));
% end
syms n;
sum = symsum((1/(n-1)),n,2,N);
answer = (1/N) * sum;
vpa(answer)
end


