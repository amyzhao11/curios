a(1,:)=[1 1 0 0 1 0 0 0 0 1  0 0 0 1 0 1 1 1 0 0 1 0 1 0 1 1 0 1 0 0 1 1 0 1 1]
a(2,:)=circshift(a(1,:),1)
a(3,:)=circshift(a(1,:),2)
a(4,:)=circshift(a(1,:),3)
a(5,:)=circshift(a(1,:),4)

a=mod(a-1,2);

total=length(a)/5;
for i=1:5
    
    for k=1:total
            %5-bit to decimal
            num(i,k)=16*a(i,5*k-4)+8*a(i,5*k-3)+4*a(i,5*k-2)+2*a(i,5*k-1)+1*a(i,5*k);
    end
    
end

%decimal to alphabet
char(num + 64)