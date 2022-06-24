component = require("component")
debug = component.debug
local jmeno = debug.getPlayer("Petsox") --Změn na svoje jméno
local svet = jmeno.getWorld()

print("Chceš kopírovat block? ano/ne")
local ans = io.read()
while (ans == "ano") do
    local num = 0
    print("Zadej X bloku, který zkopírovat: ")
    local X = io.read()
    print("Zadej Y: ")
    local Y = io.read()
    print("Zadej Z: ")
    local Z = io.read()

    print("Zadej počet: ")
    local count = io.read()
    
    jmeno.insertItem(svet.getBlockId(tonumber(X), tonumber(Y), tonumber(Z), tonumber(count), 0))

    print("Kopírovat dál? ano/ne")
    ans = io.read()    

end
