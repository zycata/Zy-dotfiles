local fat = {kb = 1, app = 2}


print(fat.kb)

for i,v in pairs(fat) do
    print(i, v)
end


local soya = {
    1, 
    2, 
    3
}

for _,i in pairs(soya) do
    print(i)
end

appBinds = {
    {kb = 'fat' .. " + W", app = "firefox"}
    
}

print(appBinds[1].app)

for i = 1, 10 do
    print(i)
end