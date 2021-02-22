function [outVec] = CircleClamp(inVec)
% Description: Clamp vector values between [-180��, +180��]
%
outVec = inVec;
for i=1:length(inVec)
    if inVec(i) > 180
        outVec(i) = inVec(i) - 360;
    elseif inVec(i) < -180
        outVec(i) = inVec(i) + 360;
    end
end

