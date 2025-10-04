math.randomseed(os.time() + os.clock() * 1000000)
math.random()


local myWord = {
    ["movies"] = {"Inception", "Avatar", "Titanic", "Joker", "Interstellar"},
    ["fruits"] = {"Banana", "Orange", "Mango", "Grapes", "Papaya"},
    ["animals"] = {"Elephant", "Giraffe", "Tiger", "Kangaroo", "Dolphin"},
}

function myWord.choose(a)
    if a == "1" then
        return myWord["movies"][math.random(1,5)]
    elseif a == "2" then
        return myWord["fruits"][math.random(1,5)]
    elseif a == "3" then
        return myWord["animals"][math.random(1,5)]
    else
        return "Error pls pick a number between 1 and 3"
    end
end

return myWord