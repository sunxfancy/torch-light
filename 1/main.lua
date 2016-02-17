-- this demo for cunn install testing

local ok, cunn = pcall(require, 'fbcunn')
if not ok then
    ok, cunn = pcall(require, 'cunn')
    if ok then
        print("warning: fbcunn not found. Falling back to cunn")
        LookupTable = nn.LookupTable
    else
        print(cunn)
        print("Could not find cunn or fbcunn. Either is required")
        os.exit()
    end
end
