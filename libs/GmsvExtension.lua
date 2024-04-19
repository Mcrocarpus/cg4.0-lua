-- GMSV HOOKs and Lua API Extensions
if _HookFunc then 

---@diagnostic disable-next-line: undefined-global
Addresses.load();

end
dofile('lua/libs/Gmsv/ItemEx.lua')
dofile('lua/libs/Gmsv/DataEx.lua')
dofile('lua/libs/Gmsv/CharEx.lua')
dofile('lua/libs/Gmsv/BattleEx.lua')
