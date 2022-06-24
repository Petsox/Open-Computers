component = require("component")
debug = component.debug
local jmeno = debug.getPlayer("mali236")
local svet = jmeno.getWorld()

print("Chceš položit bloky? ano/ne")
local ans = io.read()
while (ans == "ano") do
    print("Zadej přesné ID blocku")
    local block = io.read()

    print("Odkud X")
    local Xc = io.read()
    print("Zadej Y: ")
    local Yc = io.read()
    print("Zadej Z: ")
    local Zc = io.read()

    print("Pokud X")
    local X = io.read()
    print("Zadej Y: ")
    local Y = io.read()
    print("Zadej Z: ")
    local Z = io.read()

    svet.setBlocks(tonumber(X), tonumber(Y), tonumber(Z), tonumber(Xc), tonumber(Yc), tonumber(Zc), "minecraft:grass" , 0)

    print("Položit dálší? ano/ne")
    ans = io.read()    
end
