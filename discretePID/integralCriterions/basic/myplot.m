function y = intPlots(time, data)
    err = data;
    y = trapz(time, data);
    plot(time, err);
    disp(y);
    file=fopen('Area.txt','w');
    fprintf(file, 'Area=%f', y);
    fclose(file);
end