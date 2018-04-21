
image_call()

screen.print(10,40,please_wait .. " ...")

screen.flip()

select_flag = 4
select_ver = select_flag

x = 80

release_version_url = "http://re-doing.com/update/DOWNLOAD0/version.txt" 

if wlan.isconnected() == true then

release_version = http.get(release_version_url)

end

f = io.open("version.txt","r")
app_version = f:read()
f:close()

if not release_version then
release_version = "---"
end

while true do
buttons.read()


image_call()


screen.print(10,40,release_app_version .. " : "..release_version)
screen.print(10,60,version_of_this_application .. " : "..app_version)


--screen.print(10,x + (20*select_ver),"→")
select_img:blit(10,x + (20*select_ver-1))

screen.print(40,100,app_update .. "/" .. re_instarll) 
screen.print(40,120,credits) 
screen.print(40,140,msg_settings) 
screen.print(40,160,exit)


screen.flip()



if buttons.up then select_ver -= 1 end
if buttons.down then select_ver += 1 end

if select_ver < 1 then select_ver = select_flag end
if select_ver > select_flag then select_ver = 1 end


if buttons.circle or buttons.cross then

if select_ver == 1 then

if release_version != "---" then
dofile("lib/update_download.lua")
else
dofile("lib/updata_download_e.lua") 
end

elseif select_ver == 2 then
dofile("lib/credits.lua")

elseif select_ver == 3 then
dofile("lib/settings.lua") 

elseif select_ver == select_flag then

game.close(os.titleid())

--os.exit()


end
end


end
