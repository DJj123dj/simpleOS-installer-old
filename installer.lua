local x,y = term.getSize()
term.setBackgroundColor(colors.white)
term.clear()
term.setCursorPos(1,1)
term.setTextColor(colors.black)
print("running installer.lua...")
term.setBackgroundColor(colors.red)
term.setCursorPos(1,3)
term.write("          ")
os.sleep(1)
term.setBackgroundColor(colors.green)
term.setCursorPos(1,3)

term.write(" ")
os.sleep(0.5)
term.write(" ")
os.sleep(0.5)
term.write(" ")
os.sleep(0.2)
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
os.sleep(2)

term.setBackgroundColor(colors.cyan)
term.setTextColor(colors.white)
term.clear()
term.setCursorPos((x/2 - 5),(y/2))
term.write("installer")