
if files.exists("msg/xx.lua") then
dofile("xx.lua")

elseif tostring(os.language()) == "JAPANESE" and files.exists("msg/jp.lua") then
dofile("msg/jp.lua")

elseif tostring(os.language()) == "ITALIAN" and files.exists("msg/it.lua") then
dofile("msg/it.lua")

else

dofile("msg/en.lua")
end

