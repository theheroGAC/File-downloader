while true do
buttons.read()

image_call()

draw.fillrect(200,100,570,350,color.shine)
draw.rect(200,100,570,350,color.white)

draw.rect(380,385,220,30,b)

screen.print(320,200,i_can_not_access_the_download_link)

screen.print(480,390,ok)

screen.flip()

if buttons.circle or buttons.cross then
break
end

end
