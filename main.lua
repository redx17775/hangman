local tui = require("tui")
local renderWord = require("renderWord")
local wordBank = require("wordBank")

local tries = 6
local current = 0
local word = ""

while word == "" do
    os.execute("cls")--for linux and mac change this to "clear"
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

    if choose == "1" or choose == "2" or choose == "3" then
        word = wordBank.choose(choose)
    end
end

local wordList = {}
local lettersList = {}

for i = 1, #word do
    table.insert(wordList, string.sub(word, i, i))
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
