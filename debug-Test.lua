component = require("component")
debug = component.debug

function toboolean(str)
    local bool = false
    if str == "true" then
        bool = true
    end
    return bool
end

print("Potrolíme někoho? :)?")
local ans = io.read()
while(ans == "ano")
do
print("Zadej jméno hráče:")
local jmeno_raw = io.read()
local jmeno = debug.getPlayer(jmeno_raw)
local svet = jmeno.getWorld()

local zivoty = jmeno.getHealth()
print("Hráč má: ", zivoty, " životů")

local pozice = jmeno.getPosition()
print("Hráč je na souřadnicích: ", jmeno.getPosition())

local gamemode = jmeno.getGameType()
print("Hráč má gamemode: ", gamemode)

local svet = jmeno.getWorld().getDimensionName()
print("Hráč je ve světě: ", svet)

local weather = jmeno.getWorld().isRaining()
print("V Hráčově světě prší: ", weather)

local weather1 = jmeno.getWorld().isThundering()
print("V Hráčově světě je bouřka: ", weather1)

print("Změnit počasí ve světě hráče?")
local ans = io.read()
while(ans == "ano")
do
    print("Pršení True/False")
    local state = io.read()
    jmeno.getWorld().setRaining(toboolean(state))
    print("Bouřka True/False")
    local state = io.read()
    jmeno.getWorld().setThundering(toboolean(state))
    print("Změnit počasí ve světě hráče?")
    ans = io.read()
end

print("Chceš hráče teleportovat? ")
local ans = io.read()
while(ans == "ano")
do
    print("Zadej X: ")
    local X = io.read()
    print("Zadej Y: ")
    local Y = io.read()
    print("Zadej Z: ")
    local Z = io.read()
    os.sleep(2)
    jmeno.setPosition(tonumber(X),tonumber(Y), tonumber(Z))
    print("Teleportován, teleportovat znova?")
    ans = io.read()
end
print("Chceš hráčovi změnit gamemode?")
ans = io.read()
while(ans == "ano")
do
    print("Na?")
    local gmmd = io.read()
    jmeno.setGameType(gmmd)
    print("Znova?")
    ans = io.read()
end
print("Znova?")
ans = io.read()
end