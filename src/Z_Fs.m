function [norm_val] = Z_Fs(Fs,lambda,k)
temp = [];
for i=1:size(Fs,1)
    if mod(i,10) == 0
        disp(i);
    end
    q = Fs(i,:);
    Cq = knnsearch_data(Fs,q,k);
    temp = [temp lof(q,Cq,lambda,Fs,k)^2];
end
norm_val = lambda*sqrt(sum(temp)/size(Fs,2));
end