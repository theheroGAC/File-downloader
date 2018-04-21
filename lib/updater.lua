
if files.exists("ux0:/app/ONEUPDATE") then
	game.delete("ONEUPDATE") -- Exists delete update app
end


local scr_flip = screen.flip

function screen.flip()

image_call()

screen.print(10,40,please_wait .. " ...")

scr_flip()
buttons.homepopup(0)
			
local onAppInstallOld = onAppInstall

function onAppInstall(step, size_argv, written, file, totalsize, totalwritten)
return 10
-- Ok code
end

local onNetGetFileOld = onNetGetFile

if res then -- Success!

files.mkdir("ux0:/data/1luapkg")

files.copy("eboot.bin","ux0:/data/1luapkg")

files.copy("updater/img0.png","ux0:/data/1luapkg/")
files.copy("updater/script.lua","ux0:/data/1luapkg/")
files.copy("updater/param.sfo","ux0:/data/1luapkg/sce_sys/")

game.installdir("ux0:/data/1luapkg")

files.delete("ux0:/data/1luapkg")

game.launch(string.format("ONEUPDATE&%s&%s",os.titleid(),path))

-- Goto installer extern!
end

onAppInstall = onAppInstallOld
onNetGetFile = onNetGetFileOld
buttons.homepopup(1)
end

screen.flip()
