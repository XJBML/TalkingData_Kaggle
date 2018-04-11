function [ time_array ] = convertTimeToNum( array_of_cells )
    time_array = zeros(length(array_of_cells),1);
    for i = 1:length(array_of_cells)
        t = array_of_cells{i};
        t(regexp(t,'[-,:, ]'))=[];
    	time_array(i) = str2double(extractAfter(t,7));
    end
end

