
buttons.homepopup(0)

img = image.load("img0.png")
img:resize(960,544)
img:blit(0,0)
screen.flip()

color.loadpalette()

args = os.arg()
if args:len() == 0 then
	os.message("Error args lost!")
    game.close(os.titleid())
end

args /= "&"
if #args != 3 then
	os.message("Error args lost!")
    game.close(os.titleid())
end

dpvy = 300

function onAppInstall(step, size_argv, written, file, totalsize, totalwritten)

    if step == 1 then												-- Only msg of state

img:blit(0,0)

		screen.print(260,270,"Search in vpk, Unsafe or Dangerous files!") 
		screen.flip()

	elseif step == 2 then											-- Warning Vpk confirmation!

		return 10 -- Ok

	elseif step == 3 then											-- Unpack

img:blit(0,0)

		screen.print(430,260,"Unpack vpk...")  

screen.print(400,280,"Percent Total : "..math.floor((totalwritten*100)/totalsize).." %") 

		sx = 160
		sy = ((totalwritten*640)/totalsize)

		draw.rect(sx,dpvy + 5,641,13,color.new(255,255,255)) 
		
		draw.fillrect(sx,dpvy + 5,sy,12,color.new(179,239,61)) 
		draw.fillrect(sx,dpvy + 6,sy,1,color.new(159,225,25)) 
		draw.fillrect(sx,dpvy + 7,sy,1,color.new(159,209,51)) 
		draw.fillrect(sx,dpvy + 8,sy,1,color.new(176,211,99)) 
		draw.fillrect(sx,dpvy + 9,sy,1,color.new(197,219,145)) 
		draw.fillrect(sx,dpvy + 10,sy,1,color.new(150,187,63)) 
		draw.fillrect(sx,dpvy + 11,sy,1,color.new(124,168,20)) 
		draw.fillrect(sx,dpvy + 12,sy,1,color.new(111,150,17)) 
		draw.fillrect(sx,dpvy + 13,sy,1,color.new(114,156,16)) 
		draw.fillrect(sx,dpvy + 14,sy,1,color.new(127,171,27)) 
		draw.fillrect(sx,dpvy + 15,sy,1,color.new(147,196,39)) 
		draw.fillrect(sx,dpvy + 16,sy,1,color.new(196,221,64)) 



		screen.flip()
	elseif step == 4 then											-- Promote or install

img:blit(0,0)
		screen.print(430,260,"Installing...") 

		screen.flip()

	end
end

game.install(args[3])
files.delete(args[3])

buttons.homepopup(1)

game.launch(args[2])
