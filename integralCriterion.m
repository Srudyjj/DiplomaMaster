function y = integralCriterion(data, time)
    errorList = [] 
    for i=1:1:size(data)      
        err = 1 - data(i) 
        errorList(end+1) = abs(err); 
    end
    y = trapz(time, errorList) 
end 
