

lh = 0

if jp_flag == 1 then

dl_wac_1 = 340
dl_wac_2 = 290
dl_wac_3 = 350
dl_wac_4 = 340

elseif it_flag == 1 then

dl_wac_1 = 380
dl_wac_2 = 260
dl_wac_3 = 330
dl_wac_4 = 240

else

dl_wac_1 = 340
dl_wac_2 = 290
dl_wac_3 = 380
dl_wac_4 = 340
end



while true do
	buttons.read()

image_call()

	draw.fillrect(200,100,570,350,color.shine)
	draw.rect(200,100,570,350,color.white)


	draw.rect(230,380,220,30,color.white)
	draw.rect(510,380,220,30,color.white)

screen.print(dl_wac_1,180,are_you_troubed_with_loops)
screen.print(dl_wac_2,200,in_that_case_you_can_close_all_the_window)
screen.print(dl_wac_3,240,window_all_close)

screen.print(dl_wac_4,300,please_triangle_to_close_image)

screen.print(290,385,no_cancel) 
screen.print(600,385,yes)


if lh == 1 then
	draw.rect(510,380,220,30,b)
else
	draw.rect(230,380,220,30,b)
end

if buttons.cross or buttons.circle then

if lh == 1 then

game.close("NPXS10003")
os.delay(50)
files.delete("ur0:/user/00/savedata/NPXS10003/sce_sys/safemem.dat")
os.delay(50)
game.open("NPXS10003")

os.exit()

else

break

end

end

if buttons.triangle then
dofile("lib/loop_help_image.lua")
end
	
if buttons.left then lh -= 1 elseif buttons.right then lh += 1 end
if lh < 1 then lh = 2 elseif lh > 2 then lh = 1 end

	screen.flip()

end
