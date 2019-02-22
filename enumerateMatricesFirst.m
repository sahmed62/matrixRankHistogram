function [nextA, carryFlag] = enumerateMatricesFirst(Adim, set)
    nextA = ones(Adim) * set(1);
    carryFlag = 0;
end
