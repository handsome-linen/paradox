function [minValue, idx] = searchMinFromList(L)
% searchMinFromList
% Input Arguments
% L
% Output Arguments
% minValue
% idx

n = length(L);
minValue = L(1);
idx = 1;
counter = 2;
while counter <= n
    v = L(counter);
    if v < minValue
        minValue = v;
        idx = counter;
    else
        % do nothing
    end
    counter = counter + 1;
end

end

