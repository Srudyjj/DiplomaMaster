function y = integralCriterion(data)
    err = data.Nominal.Error.Data;
    time = data.Nominal.Error.Time;
    tau = 2;
    d = tau^2.*diff(err).^2;
    d(end+1) = 0;
    er = err.^2;
    f = er + d;
    y = trapz(time, f);
    disp('Area');
    disp(y)
    disp(data.DesignVars)
    file=fopen('DesignVars.txt','w');
    for i = 1:4
        fprintf(file, '%s %f\n', data.DesignVars(i).Name, data.DesignVars(i).Value);
    end
    fclose(file);
end