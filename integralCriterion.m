function y = integralCriterion(data)
    err = data.Nominal.Error.Data;
    time = data.Nominal.Error.Time;
    tau = 2;
    d = tau.*diff(err).^2;
    d(end+1) = 0;
    er = err.^2;
    f = er + d;
    y = trapz(time, f);
    disp('Area');
    disp(y) 
end