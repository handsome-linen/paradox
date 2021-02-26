function [L2] = sortList(L)
% searchMinFromList
% Input Arguments
% L
% Output Arguments
% L2

n = length(L);
L2 = zeros(1,n);
counter = 1;
while counter <= n
    [m, idx] = searchMinFromList(L);
    L2(counter) = m;
    L(idx) = [];
    counter = counter + 1;
end

end

