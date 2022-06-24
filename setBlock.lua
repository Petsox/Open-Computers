component = require("component")
debug = component.debug
local jmeno = debug.getPlayer("Petsox")
local svet = jmeno.getWorld()

print("Chceš položit block? ano/ne")
local ans = io.read()
while (ans == "ano") do
    print("Zadej přesné ID blocku (číslo)")
    local block = io.read()

    print("Zadej X kam zkopírovat: ")
    local Xc = io.read()
    print("Zadej Y: ")
    local Yc = io.read()
    print("Zadej Z: ")
    local Zc = io.read()

    print(svet.setBlock(tonumber(Xc), tonumber(Yc), tonumber(Yc), tonumber(block), 0))

    print("Položit dálší? ano/ne")
    ans = io.read()    
end
