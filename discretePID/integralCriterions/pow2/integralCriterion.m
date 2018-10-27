function y = integralCriterion(data)
    err = data.Nominal.Error.Data.^2;
    time = data.Nominal.Error.Time;
    y = trapz(time, err);
    disp(y);
end