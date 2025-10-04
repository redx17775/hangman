local tui = require("tui")
local renderWord = require("renderWord")
local wordBank = require("wordBank")

local tries = 6
local current = 0

os.execute("cls")
print(tui["start"])
print()
io.write([[

pls pick a catehories :
1. movies
2. fruits
3. animals

enter your chosse number >> ]])
local choose = io.read() or ""
os.execute("cls")

local word = wordBank.choose(choose)
local wordList = {}
local lettersList = {}

for i = 1, #word do
    table.insert(wordList, string.sub(word, i, i))
end

local function allGuessed(wl, ll)
    for i = 1, #wl do
        local letter = string.lower(wl[i])
        if letter ~= " " and not renderWord.inTable(ll, letter) then
            return false
        end
    end
    return true
end

while true do
    if current < tries or current == "" then
        os.execute("cls")
        print(word)
        print(tui["hangman_" .. current])
        print()
        print(renderWord.render(word, lettersList))
        print()
        io.write("enter a letter : ")
        local letter = string.lower(io.read() or "")

        if(renderWord.inTable(wordList , letter) and not renderWord.inTable(lettersList , letter)) then
            table.insert(lettersList, letter)
        else
            current = current + 1
        end

        if not string.find(renderWord.render(word, lettersList),  "_") then
            os.execute("cls")
            print(tui["win"]) 
            break
        end

    else
        os.execute("cls")
        print(tui["gameOver"])
        break
    end
    
   

end
