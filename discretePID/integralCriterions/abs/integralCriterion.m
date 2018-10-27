function y = integralCriterion(data)
    err = data.Nominal.Error.Data;
    time = data.Nominal.Error.Time;
    y = trapz(time, abs(err));
    disp(y);
end