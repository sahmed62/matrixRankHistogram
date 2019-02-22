function [nextA, carryFlag] = enumerateMatricesNext(A, set)
    % The number of elements in the set
    N = numel(set);
    % The number of elements in matrix A
    L = numel(A);
    % Initialize next A to the previous A
    nextA = A;
    carryFlag = 1;
    % Loop over the elements of the matrix
    for i = 1:L
        % determine the set index of the i-th element (digit) in A
        setindex = lookup(set, A(i), 'm') + 1;
        % check for carry
        if setindex > N
            %roll back to 1, carry
            nextA(i) = set(1);
        else
            %no roll over, no carry, we're done
            nextA(i) = set(setindex);
            carryFlag = 0;
            break;
        end
    end
end
