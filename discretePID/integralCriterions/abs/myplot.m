function y = intPlots(time, data)
    err = abs(data)
    y = trapz(time, err);
    plot(time, err);
    disp(y);
    file=fopen('Area.txt','w');
    fprintf(file, 'Area=%f', y);
    fclose(file);
end