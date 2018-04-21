

image_call()

screen.print(10,40,please_wait .. " ...")

screen.flip()



file_url = "http://re-doing.com/update/DOWNLOAD0/File_Downloader.vpk" 
path = "ux0:/data/File Downloader.vpk"


res = http.getfile(file_url,path)


if res then
dofile("lib/updater.lua")
end


