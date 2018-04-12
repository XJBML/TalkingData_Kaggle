function [ time_array ] = convertTimeToNum2( array_of_datatime )
    time_array = zeros(length(array_of_datatime),1);
    for i = 1:length(array_of_datatime)
        t = datestr(array_of_datatime(i),' dd HH:MM:SS AM');
        t(regexp(t,'[-,:, ,A,M]'))=[];
    	time_array(i) = str2double(t);
    end
end

