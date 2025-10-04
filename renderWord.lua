local word = {}

function word.render(a, b) 
    local indexOfB = {}
    for p in pairs(b) do
        --print(b[p])
        word.indexOf(indexOfB, a, b[p])
    end
--[[
    for v in pairs(indexOfB) do
        print(indexOfB[v])
    end
]]--
    local wordRender = string.sub(a, 1, 1)
    for i = 2, #a, 1 do
        if word.inTable(indexOfB, i) then
             wordRender = wordRender .. " " .. string.sub(a, i, i) .. " "
        else
            wordRender = wordRender .. " _ "
        end
    end
    return wordRender
end

function word.indexOf(t, w, l)
    for i = 2, #w do
        if string.sub(w, i, i) == l then
            table.insert(t, i)
        end
    end
end

function word.inTable(t , n)
    for p in pairs(t) do
        if t[p] == n then
            return true
        end
    end
return false
end

-- test cases for my... u not supposed to read this >:(

--[[
local x = word.indexOf("hello", "o")
for p in pairs(x) do
    print(x[p])
end
print(word.inTable(x, 1))
print(word.inTable(x, 2))
print(word.inTable(x, 3))
print(word.inTable(x, 4))
print(word.inTable(x, 5))
]]--

--[[
local x = word.indexOf("hello", "l")
for p in pairs(x) do
    print(x[p])
end
]]--

--[[
io.write("enter a word : ")
local x = io.read()
print(word.render(x, {"o", "l"}))
]]--

