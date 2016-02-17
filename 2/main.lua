-- some basic tensor use
-- creation of a 4D-tensor 4x5x6x2
z = torch.Tensor(4,5,6,2)

-- for more dimensions, (here a 6D tensor) one can do:
s = torch.LongStorage(6)
s[1] = 4; s[2] = 5; s[3] = 6; s[4] = 2; s[5] = 7; s[6] = 3;
x = torch.Tensor(s)

print(x:nDimension())
print(x:size())


x = torch.Tensor(4,5)
s = x:storage()
for i=1,s:size() do -- fill up the Storage
  s[i] = i
end

print(x)


x = torch.Tensor(4,5)
local i = 0
x:apply(function()
  i = i + 1
  return i
end)

print(x)
print(x:stride())


x = torch.Tensor(2,5):fill(3.14)
print(x)


x = torch.Tensor(5, 6):zero()

x[{ 1,3 }] = 1 -- sets element at (i=1,j=3) to 1
print(x)

x[{ 2,{2,4} }] = 2  -- sets a slice of 3 elements to 2
print(x)

x[{ {},4 }] = -1 -- sets the full 4th column to -1
print(x)

x[{ {},2 }] = torch.range(1,5) -- copy a 1D tensor to a slice of x
print(x)

y = torch.rand(5, 5)
print(y)
