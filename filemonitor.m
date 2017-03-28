D1 = rdir('**\*'); % in Linux, use '**/*' instead
D1_name = extractfield(D1, 'name');
tic
ten_minute_count = 0;
while(1)
    D2 = rdir('**\*'); % in Linux, use '**/*' instead
    D2_name = extractfield(D2, 'name');
    ADD = setdiff(D2_name,D1_name);
    DELETE = setdiff(D1_name,D2_name);
    [add1 add_count] = size(ADD);
    [delete1 delete_count] = size(DELETE);
    
    if (add_count ~=0 || delete_count ~=0)
        disp('----file change detected----');
        disptime();
        if add_count ~= 0
            for i = 1:add_count
                fprintf('+ %s\n', char(ADD(1,i)) );
            end
        end
        if delete_count ~= 0
            for i = 1:delete_count
                fprintf('- %s\n', char(DELETE(1,i)) );
            end
        end
        disp('------------------------------');
    end
    
    D1 = D2;
    D1_name = D2_name;
    pause(2); % pause seconds
    timerVal = toc;
    if( floor(timerVal/600) > ten_minute_count )
        disp('-------------Another 10 minutes passed-------------');
        ten_minute_count = ten_minute_count + 1;
    end
%     disp('pause');
end