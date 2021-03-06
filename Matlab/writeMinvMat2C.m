
%Mmat(i,j,cNum,eType)

fid = fopen('MmatInvStencils.inp','w');

for cNum = 1:8
    fprintf(fid,'\n');
    for eType = 1:18
        fprintf(fid,'\n');
        fname = ['MassInvMatrix_',int2str(cNum),'_',int2str(eType),'.mat'];
        load(fname,'InvMmat');
        for i = 1:8
            for j = 1:8
                if j < 8
                    fprintf(fid,'%.15f ',InvMmat(i,j));
                else
                    fprintf(fid,'%.15f',InvMmat(i,j));
                end
            end
            if i < 8
                fprintf(fid,'\n');
            else
                fprintf(fid,'\n');
            end
        end
        if eType < 18
            fprintf(fid,'\n');
        else
            fprintf(fid,'\n');
        end
    end
    if cNum < 8
        fprintf(fid,'\n');
    else
        fprintf(fid,'\n');
    end
end

fprintf(fid,'\n\n');

fclose(fid);



