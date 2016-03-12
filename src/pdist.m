function [outp] = pdist(f,Cf,lambda)
temp = 0;
for i=1:size(Cf,1)
    temp = temp + norm(f-Cf(i,:))^.2;
end
outp = lambda*sqrt(temp/size(Cf,2));
end
