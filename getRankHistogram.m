function [rankhistogram] = getRankHistogram(dimArray, digitSet)
    [A, carry] = enumerateMatricesFirst(dimArray, digitSet);
    rankhistogram = [];
    while carry == 0
        [A, carry] = enumerateMatricesNext(A, digitSet);
        Arank = rank(A) + 1;
        if length(rankhistogram) < Arank
            rankhistogram(Arank) = 1;
        else
            rankhistogram(Arank) = rankhistogram(Arank) + 1;
        end
    end
end
