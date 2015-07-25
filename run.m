clc
data_path =  '~/Downloads/PF_CNN_SVM/data/';

files = dir(data_path);

for id = 1:length(files)
    if ~isdir([data_path files(id).name]) || strcmp('.', files(id).name) || strcmp('AE_train_Deer', files(id).name) || strcmp('..', files(id).name)
        continue;
    end
    close all;
    run_tracker(files(id).name, 'gaussian', 'deep');
end