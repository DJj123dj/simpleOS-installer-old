local x,y = term.getSize()
term.setBackgroundColor(colors.white)
term.clear()
term.setCursorPos(1,1)
term.setTextColor(colors.black)
print("downloading installer.lua...")
term.setBackgroundColor(colors.red)
term.setCursorPos(1,3)
term.write("          ")
os.sleep(1)
term.setBackgroundColor(colors.green)
term.setCursorPos(1,3)

term.write(" ")
os.sleep(0.2)
term.write(" ")
os.sleep(0.2)
term.write(" ")
os.sleep(0.2)
term.write(" ")
os.sleep(0.2)
term.write(" ")
os.sleep(0.1)
term.write(" ")
os.sleep(0.1)
term.write(" ")
os.sleep(0.2)
term.write(" ")
os.sleep(0.1)
term.write(" ")
os.sleep(0.1)
term.write(" ")
os.sleep(2)

term.setBackgroundColor(colors.cyan)
term.setTextColor(colors.white)
term.clear()
term.setCursorPos((x/2 - 8),(y/2))
term.write("testOS installer")

--create dir
shell.run("background","mkdir","./libs")
shell.run("background","mkdir","./libs/testos-ui")
shell.run("background","mkdir","./libs/cobalt")
shell.run("background","mkdir","./libs/cobalt/lib")
shell.run("background","mkdir","./libs/cobalt/lib/modules")
shell.run("background","mkdir","./libs/cobalt/lib/modules/graphics")
shell.run("background","mkdir","./libs/cobalt/lib/modules/keyboard")
shell.run("background","mkdir","./libs/cobalt/lib/modules/mouse")
shell.run("background","mkdir","./libs/cobalt/lib/modules/graphics/classes")

shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/startup.lua","./startup.lua")

os.sleep(5)


--install testos-ui
shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/main.lua","./main.lua")
shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/libs/testos-ui/main.lua","./libs/testos-ui/main.lua")
os.sleep(3)

--cobalt instalation
shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/libs/cobalt/init.lua","./libs/cobalt/init.lua")
shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/libs/cobalt/lib/clasp.lua","./libs/cobalt/lib/clasp.lua")
shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/libs/cobalt/lib/surface.lua","./libs/cobalt/lib/surface.lua")

shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/libs/cobalt/lib/modules/graphics/init.lua","./libs/cobalt/lib/modules/graphics/init.lua")
shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/libs/cobalt/lib/modules/keyboard/init.lua","./libs/cobalt/lib/modules/keyboard/init.lua")
shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/libs/cobalt/lib/modules/mouse/init.lua","./libs/cobalt/lib/modules/mouse/init.lua")
os.sleep(2)

shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/libs/cobalt/lib/modules/graphics/init.lua","./libs/cobalt/lib/modules/graphics/classes/Canvas.lua")
shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/libs/cobalt/lib/modules/graphics/init.lua","./libs/cobalt/lib/modules/graphics/classes/Drawable.lua")
shell.run("background","wget","https://raw.githubusercontent.com/DJj123dj/testSystem/main/libs/cobalt/lib/modules/graphics/init.lua","./libs/cobalt/lib/modules/graphics/classes/Image.lua")
os.sleep(5)

os.reboot()