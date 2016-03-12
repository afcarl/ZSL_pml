function [ out ] = knnsearch_data(Fs,q,k)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
out_idx = knnsearch(Fs,q,'K',k);
out = [];
for i=1:size(out_idx,1)
    out = [out Fs(out_idx,:)];
end
end

