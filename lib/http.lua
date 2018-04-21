
file_size = 3

dpvy = 300

function onNetGetFile(size,written,speed)

buttons.read()

image_call()

if file_size == 1 then
fsize = tostring(size).."Byte"
fwritten = tostring(written).."Byte"

elseif file_size == 2 then
fsize = tostring(math.floor(size/1024)).."KB"
fwritten = tostring(math.floor(written/1024)).."KB"

elseif file_size == 3 then
fsize = tostring(math.floor(size/1024/102.4)*0.1).."MB"
fwritten = tostring(math.floor(written/1024/102.4)*0.1).."MB"

end

screen.print(10,40,downloading .. "...") 

screen.print(10,80,dl_size .. " : "..fsize) 
screen.print(10,100,dl_written .. " : "..fwritten) 
screen.print(10,120,lr_to_change_size)

screen.print(10,160,dl_speed .. " : "..tostring(speed).."Kb/s")  

if update_flag == 1 then

screen.print(10,200,download .. " URL : "..dl_url)
screen.print(10,220,file_name .. " : "..dl_file_name[1]) 
screen.print(10,240,save_path .. " : "..storage_path) 


screen.print(10,340,download_cancel_is_please_circle_or_cross) 

if buttons.circle then
return 0
end


end

screen.print(10,dpvy - 20,"Porcent: "..math.floor((written*100)/size).."%") 

-- draw.fillrect(15,305,660,10,color.new(140,140,140)) 

draw.rect(15,305,661,13,color.new(255,255,255)) 

draw.fillrect(15,dpvy + 5,((written*660)/size),12,color.new(179,239,61)) 
draw.fillrect(15,dpvy + 6,((written*660)/size),1,color.new(159,225,25)) 
draw.fillrect(15,dpvy + 7,((written*660)/size),1,color.new(159,209,51)) 
draw.fillrect(15,dpvy + 8,((written*660)/size),1,color.new(176,211,99)) 
draw.fillrect(15,dpvy + 9,((written*660)/size),1,color.new(197,219,145)) 
draw.fillrect(15,dpvy + 10,((written*660)/size),1,color.new(150,187,63)) 
draw.fillrect(15,dpvy + 11,((written*660)/size),1,color.new(124,168,20)) 
draw.fillrect(15,dpvy + 12,((written*660)/size),1,color.new(111,150,17)) 
draw.fillrect(15,dpvy + 13,((written*660)/size),1,color.new(114,156,16)) 
draw.fillrect(15,dpvy + 14,((written*660)/size),1,color.new(127,171,27)) 
draw.fillrect(15,dpvy + 15,((written*660)/size),1,color.new(147,196,39)) 
draw.fillrect(15,dpvy + 16,((written*660)/size),1,color.new(196,221,64)) 




screen.flip()


if buttons.right then file_size += 1 end
if buttons.left then file_size -= 1 end

if file_size < 1 then file_size = 3 end
if file_size > 3 then file_size = 1 end


return 1;
end
