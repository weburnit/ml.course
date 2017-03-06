A = [1 2; 3 4]
B = [2 4; 5 10]
C = A*B;
R = [ 1 0; 0 1]
total = 0;
for i = 1: 2
    for j = 1:2
        if(R(i,j) == 1)
            total = total + C(i,j);
        end
    end
end
C = (A*B).*R;
testT = sum(C(:));
testT1 = sum(sum(C(R==1)));