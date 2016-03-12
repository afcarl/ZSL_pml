clc;
clear all;
load trainingdataNN;
load mapping_10000_grad;
embedded = [];
for i = 1:size(trainX,1)
    if mod(i,1000)==0
        disp(i);
    end
    input_vec = trainX(i,:);
    embedded = [embedded net(input_vec')];    
end

