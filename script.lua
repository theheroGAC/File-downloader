buttons.homepopup(0)
color.loadpalette() -- Load Defaults colors
buttons.read()

jp_flag = 0
it_flag = 0

dofile("lib/image_call.lua")
dofile("lib/msg.lua")
dofile("lib/http.lua")
dofile("settings/download_path.lua")


update_flag = 0

args = ""

tmp_args = os.arg()

if #tmp_args > 0 then
  args = tmp_args
end


if files.exists("ux0:/app/ONEUPDATE/") then
game.delete("ONEUPDATE")
end

if tostring(args) == "" or #args < 33 then

dofile("lib/home.lua")

end


dofile("lib/dcud.lua")


image_call()

screen.print(10,40,please_wait .. " ...")

screen.flip()


-- args = tmp_args

update_flag = 1

--dl_path = "ux0:/download/" 


if not files.exists(dl_path) then
files.mkdir(dl_path)
end


args /= ":"


dl_url = ""

for i = 2,#args do

dl_url += tostring(args[i])

if i != #args then
dl_url += ":"
end

end


dl_url_file = dl_url / "/"

file_name_len = #dl_url_file[#dl_url_file]

dl_url_file = dl_url_file[#dl_url_file] / "#"
dl_url_file = dl_url_file[1] / "?"
dl_file_name = dl_url_file[1] / "&"


if file_name_len == 0 or dl_file_name[1] == "" then

dl_url_file = tostring(args[3]) / "/"
dl_file_name[1] = tostring(dl_url_file[3])

end


if files.exists(dl_path .. dl_file_name[1]) then

dl_file_name[1] = osk.init(msg_title,dl_file_name[1])

if dl_file_name[1] == null or dl_file_name[1] == "" then
os.exit()
end

end


storage_path = dl_path .. dl_file_name[1]


--[[
f = io.open("ux0:/file_title.txt","w")
f:write(dl_file_name[1])
f:close()
]]


http.getfile(dl_url,storage_path)



os.uri("wbapp0:")

os.exit()


while true do
buttons.read()

img:blit(0,0)

screen.flip()

if buttons.circle then
os.exit()
end


end
