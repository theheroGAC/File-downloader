
settings_s_flag = 3
settings_s_ver = settings_s_flag

x = 80


while true do
buttons.read()


image_call()


screen.print(10,40,release_app_version .. " : "..release_version)
screen.print(10,60,version_of_this_application .. " : "..app_version)


select_img:blit(10,x + (20*settings_s_ver-1))

screen.print(40,100,save_path.." : "..dl_path)
screen.print(40,120,reset_dl_path .. "(ux0:/download/)")
screen.print(40,140,exit)


screen.flip()



if buttons.up then settings_s_ver -= 1 end 
if buttons.down then settings_s_ver += 1 end 

if settings_s_ver < 1 then settings_s_ver = settings_s_flag end 
if settings_s_ver > settings_s_flag then settings_s_ver = 1 end 


if buttons.circle or buttons.cross then

if settings_s_ver == 1 then 

new_dl_path = osk.init(save_path,dl_path)

if new_dl_path == null or new_dl_path == "" then
os.exit()
end

dl_path_f = io.open("settings/download_path.lua","w")
--work_dl_path = dl_path_f:read()
dl_path_f:write("dl_path = \"" .. new_dl_path .."\"")

dl_path_f:close()

elseif settings_s_ver == 2 then

dl_path_f = io.open("settings/download_path.lua","w")
dl_path_f:write("dl_path = \"ux0:/download/\"")
dl_path_f:close()


elseif settings_s_ver == settings_s_flag then

break

--os.exit()


end
end


end
