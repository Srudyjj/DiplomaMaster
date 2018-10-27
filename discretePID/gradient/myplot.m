function y = intPlots(time, data)
    err = data;
    tau = 2;
    d = tau^2.*diff(err).^2;
    d(end+1) = 0;
    er = err.^2;
    f = er + d;
    y = trapz(time, f);
    plot(time, f);
    disp(y);
    file=fopen('Area.txt','w');
    fprintf(file, 'Area=%f', y);
    fclose(file);
end