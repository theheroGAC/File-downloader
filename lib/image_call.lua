
img_path = "sce_sys/pic0.png"
logo_path = "image/FDL_logo.png"
select_path = "image/select.png"

if files.exists(img_path) then
img = image.load(img_path)
img:resize(960,544)
end

if files.exists(logo_path) then
FDL_logo = image.load(logo_path)
end

if files.exists(select_path) then
select_img = image.load(select_path)
end


function image_call()

if img then img:blit(0,0) end
if FDL_logo then FDL_logo:blit(30,460) end

end

b = color.new(0,0,255)


