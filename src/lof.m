function [lof_val] = lof(f,Cf,lambda,Fs,k)
pdist_f = pdist(f,Cf,lambda);
temp = [];
for i=1:size(Cf,1)
    q = Cf(i,:);
    Cq = knnsearch_data(Fs,q,k);
    temp = [temp pdist(f,Cq,lambda)];
end
Eq = sum(temp)/size(Cf,2);
lof_val = pdist_f./Eq - 1;
end