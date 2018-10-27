function y = intPlots(time, data)
    err = data.^2;
    y = trapz(time, err);
    plot(time, err);
    disp(y);
    file=fopen('Area.txt','w');
    fprintf(file, 'Area=%f', y);
    fclose(file);
end