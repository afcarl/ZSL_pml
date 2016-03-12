function [ loopProb ] = loop_prob(f,Fs,k,lambda,Z)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Cf = knnsearch(Fs,f,'K',k);
lof_f = lof(f,Cf,lambda,Fs,k);
loopProb = max([0 erf(lof_f/Z)]);
end

