component = require("component")
debug = component.debug
print("Koho chceš portovat každejch 15 sekund")
local jmeno_raw = io.read()
local jmeno = debug.getPlayer(jmeno_raw)
local svet = jmeno.getWorld()

local X
local Z

while (true) do
    local I = 222
    X = math.random(-3000, 3000)
    Z = math.random(-3000, 3000)

    while svet.getBlockId(X, I, Z) == 0 do
        I = I - 1
        
    end

    I = I + 1

    if svet.getBlockId(X, I - 2, Z) ~= 9 or svet.getBlockId(X, I - 2, Z) ~= 8 then
        if svet.canSeeSky(X, I, Z) then
            jmeno.setPosition(X, I, Z)
            os.sleep(15)
        end
    end
end


