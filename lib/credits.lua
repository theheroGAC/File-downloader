while true do
buttons.read()

image_call()

screen.print(10,40,credits)

screen.print(10,80,"@_Xa_904")
screen.print(10,100,idea..", "..system)

screen.print(10,140,"@vonanzard")
screen.print(10,160,idea..", "..image_)

screen.print(10,200,"Team ONELua")
screen.print(10,220,"ONELua "..system)


screen.flip()

if buttons.circle or buttons.cross then
break
end

end
