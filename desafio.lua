-- Habilitar UTF-8 no terminal do Windows
os.execute("chcp 65001")
os.execute("cls")

local monsterName = "Goblin"
local description = "Um monstro pequeno e feio"
local emoji = "👹"
local sound = "Grunt"
local favoteTime = "Noturno"
local dropItems = { "Gold", "Potion", "Sword" }
local maxAttributes = 10
local attributes = {
    attack = 10,
    defense = 5,
    life = 2,
    speed = 5,
    intelligence = 2
}
local skills = {
    stealth = 5,
    explosion = 2
}

local function progressBar(value, max)
    local bar = ""
    for i = 1, max do
        if i <= value then
            bar = bar .. "▮"
        else
            bar = bar .. "▯"
        end
    end
    return bar
end

print("=====================================================")
print("|                        RPG                        |")
print("| ")
print("| " .. monsterName .. emoji)
print("| Descricao: " .. description)
print("| Som: " .. sound)
print("| Horario favorito: " .. favoteTime)
print("| Drop: " .. table.concat(dropItems, ", "))
print("| Atributos: ")
print("| Ataque:        " .. attributes.attack .. " " .. progressBar(attributes.attack, maxAttributes))
print("| Defesa:        " .. attributes.defense .. " " .. progressBar(attributes.defense, maxAttributes))
print("| Vida:          " .. attributes.life .. " " .. progressBar(attributes.life, maxAttributes))
print("| Velocidade:    " .. attributes.speed .. " " .. progressBar(attributes.speed, maxAttributes))
print("| intelligencia: " .. attributes.intelligence .. " " .. progressBar(attributes.intelligence, maxAttributes))
print("| ")
print("=====================================================")
