

window_img1 = image.load("image/window_img1.png")
window_img1:resize((960-142)/2,(544-111)/2)

window_img2 = image.load("image/window_img2.png")
window_img2:resize((960-229)/2,(544-117)/2)


new_image = image.load("image/new_image.png")
new_image:resize(46,13)


over_ = 1


if jp_flag == 1 then
dl_x_1 = 295
dl_x_2 = 560
bwcc = 380
elseif it_flag == 1 then
dl_x_1 = 295
dl_x_2 = 560
bwcc = 230
else
dl_x_1 = 290
dl_x_2 = 535
bwcc = 380
end




while true do
	buttons.read()

image_call()


window_img1:blit(40,60)
draw.rect(40,60,(960-142)/2,(544-111)/2,color.new(255,255,255))

window_img2:blit(530,60)
draw.rect(530,60,(960-229)/2,(544-117)/2,color.new(255,255,255))

new_image:blit(470,160)

screen.print(bwcc,350,back_with_circle_or_cross)


if buttons.cross or buttons.circle then

break

end

	screen.flip()

end
