function [B] = InductionCalculator(numPoints, decayZone, B_center)

    decayArray = zeros(1, numPoints);
    truePoints = numPoints * decayZone/100;
    for i = 1:numPoints
        if i < numPoints/2 && i < truePoints
            decayArray(i) = 1;
        elseif i > numPoints/2 && i > numPoints - truePoints
            decayArray(i) = 1;
        end
    end

    varB = linspace((decayZone/100)*B_center, B_center, truePoints);
    B = zeros(1, numPoints);
    for i = 1:numPoints
        if decayArray(i) == 0
            B(i) = B_center;
        elseif i < numPoints/2 && decayArray(i) == 1
            B(i) = varB(i);
        elseif i > numPoints/2 && decayArray(i) == 1  && i ~= numPoints
            pos = abs(numPoints - i);
            B(i) = varB(pos);
        elseif i == numPoints
            B(i) = varB(1);
        end
    end
end

