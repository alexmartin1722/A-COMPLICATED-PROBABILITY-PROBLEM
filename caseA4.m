%Author: Alex Martin
%
%Date: 9/25/22


function caseA4(N)
%the probability of 3 hit
sum_n = 0.0;
for n = 2:N
    sum_m = 0.0;
    for m = n+1:N
        sum_p = 0.0;
        for p = m+1:N
            sum_o = 0.0;
            for o = p+1:N
                sum_o = sum_o + (1/(o-1));
            end
            sum_p = sum_p + ((1/(p-1)) * sum_o);
        end
        sum_m = sum_m + (sum_p * (1/(m-1)));
    end
    sum_n = sum_n + (sum_m * (1/(n-1)));
end
answer = (1/N) * sum_n;
vpa(answer)
end


