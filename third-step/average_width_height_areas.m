%it calculates the density of the bounding boxes

function average = average_width_height_areas(folder_path,srcFiles)
    %inverse_img = imread('C:\Users\akhil\Documents\MATLAB\Allfiles\Individual_Words_first\OnlyHandwritten\38AL0081_68-1-1_Revisit_1a\line10.png4.png');
    width_list = zeros(length(srcFiles),1);
    height_list = zeros(length(srcFiles),1);
    area_list = zeros(length(srcFiles),1);
    for i=1:length(srcFiles)
        filename = strcat(folder_path,srcFiles(i).name);
        inverse_img = imread(filename);
        img = imcomplement(inverse_img);
        [r,c]=size(img);
        width_list(i)= c;
        height_list(i)= r;
        area_list(i) = r*c;
    end    
    average.width = sum(width_list)/length(srcFiles);
    average.height = sum(height_list)/length(srcFiles);
    average.area = sum(area_list)/length(srcFiles);
end
