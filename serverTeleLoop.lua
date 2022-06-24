component = require("component")
debug = component.debug
local jmeno = debug.getPlayer("mali236") -- Změn na svoje jméno
local svet = jmeno.getWorld()

os.sleep(600)

local X
local Z
local count = 0
local u
local players = debug.getPlayers()
local jmen

function tablelength(T)
    local counts = 0
    for _ in pairs(T) do counts = counts + 1 end
    return counts
  end

  local lenght = tablelength(players)
  print(lenght)
while (true) do

    if count >= lenght - 1  then
        local players = debug.getPlayers()
        lenght = tablelength(players)
        print(lenght)
        count = 0
    end

    for k in pairs(players) do

        if count >= lenght - 1 then
            break
        end

        u = 0
        while u < 1 do

            local I = 100
            X = math.random(-3000, 3000)
            Z = math.random(-3000, 3000)

            while svet.getBlockId(X, I, Z) == 0 do
                I = I - 1
            end

            I = I + 1

            if svet.getBlockId(X, I - 2, Z) ~= 9 or svet.getBlockId(X, I - 2, Z) ~= 8 then
                if svet.canSeeSky(X, I, Z) then
                    jmen = debug.getPlayer(players[k])
                    print(players[k])
                    print(jmen)
                    jmen.setPosition(X, I, Z)
                    count = count + 1
                    u = 1
                    print(count)
                end
            end
        end
    end
end
