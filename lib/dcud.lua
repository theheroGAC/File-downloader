
b = color.new(0,0,255)

over_ = 1

if jp_flag == 0 then
dl_x_1 = 290
dl_x_2 = 535

dl_op = 400

dl_file = 320
else
dl_x_1 = 295
dl_x_2 = 560

dl_op = 380

dl_file = 340
end


while true do
	buttons.read()

image_call()

	draw.fillrect(200,100,570,350,color.shine)
	draw.rect(200,100,570,350,color.white)


	draw.rect(230,380,220,30,color.white)
	draw.rect(510,380,220,30,color.white)

screen.print(dl_file,180,download_the_file)

screen.print(dl_op,260,option + " - "+ triangle)


screen.print(dl_x_1,385,no_cancel) 
screen.print(dl_x_2,385,download_to_save) 


if over_ == 1 then

	draw.rect(510,380,220,30,b)

else

	draw.rect(230,380,220,30,b)

end

if buttons.cross or buttons.circle then

if over_ == 1 then
break
else
os.uri("wbapp0:")
os.exit()
end

end

if buttons.triangle then
dofile("lib/loop_help.lua")
end
	
	if buttons.left then over_ -= 1 elseif buttons.right then over_ += 1 end
	if over_ < 1 then over_ = 2 elseif over_ > 2 then over_ = 1 end

	screen.flip()

end
