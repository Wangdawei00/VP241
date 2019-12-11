function table2latex(filename,mymatrix)
    fileID=fopen(filename,'w');
    fprintf(fileID,'\\begin{table}[!ht]\n\t\\centering\n\t\\begin{tabular}{|');
    [r,c]=size(mymatrix);
    for i=1:c
        fprintf(fileID, 'c|');
    end
    fprintf(fileID,'}\n\t\t\\hline\n\t\t');
    for i=1:r
        for j=1:c-1
            if rem(j,2)==1
                fprintf(fileID,'%.*f&',roundnumber(mymatrix(i,j+1)),mymatrix(i,j));
            else
                fprintf(fileID,'%.*f&',roundnumber(mymatrix(i,j)),mymatrix(i,j));
            end
        end
        if i==r
            fprintf(fileID,'%.*f\\\\\\hline\n\t',roundnumber(mymatrix(i,c)),mymatrix(i,c));
        else
            fprintf(fileID,'%.*f\\\\\\hline\n\t\t',roundnumber(mymatrix(i,c)),mymatrix(i,c));
        end
    end
    fprintf(fileID,'\\end{tabular}\n\t\\caption{}\n\t\\label{tab:}\n\\end{table}');
    fclose(fileID);
end