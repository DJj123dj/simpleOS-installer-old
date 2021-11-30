local pressNext = true
local scrollPos = 0
local scrollTextLength = 0

local versionhttp = http.get("https://raw.githubusercontent.com/DJj123dj/simpleOS/main/version.txt")
local versiontext = versionhttp.readAll()

while pressNext do
    term.setBackgroundColor(colors.cyan)
    term.clear()
    x,y = term.getSize()

    local abc = window.create(term.current(),6,4,(x-11),(y-11))

    term.setCursorPos((x/2 - 8 ),2) 
    term.write("Before we start:")

    term.setBackgroundColor(colors.gray)
    term.setCursorPos((6),(y-2))
    term.write("< back")

    term.setCursorPos((x-14 ),(y-2))
    term.write("install >")

    term.setCursorPos((x/2 - 20),(y-2))
    term.write("Version "..versiontext)

    term.setCursorPos(1,1)


    abc.setBackgroundColor(colors.black) 
    cctext = require("cc.strings")

    local text = "The installation can take about 30 seconds to 2 minutes, depending on your computer speed.\n\nAfter everything has been installed, the computer will reboot automatically, and you will get the 'first start' configuration panel.\n\nClick 'install' to start the installation."
    local lines = cctext.wrap(text,(x-11))
    
    for i = 1, #lines do
        scrollTextLength = #lines
        
        abc.setCursorPos(1,i)
        abc.write(lines[i])
        i = i+1
    end
        abc.scroll(scrollPos)



    local eventData = {os.pullEvent()}
    local event = eventData[1]

    if (event == "mouse_scroll") then

        local dir = eventData[2]
        local lx = eventData[3]
        local ly = eventData[4]

        if lx>5 and lx<(x-4) and ly>3 and ly<(y-5) then

            if (scrollPos < 1 and dir == -1) then
                --none
            elseif (scrollPos < 1 and dir == 1) then
                scrollPos = scrollPos + dir
            elseif (scrollPos > scrollTextLength and dir == 1) then
                --none
            elseif (scrollPos > scrollTextLength and dir == -1) then
                scrollPos = scrollPos + dir
            else
                scrollPos = scrollPos + dir
            end
        end
    end

    if (event == "mouse_click") then

        local button = eventData[2]
        local lx = eventData[3]
        local ly = eventData[4]

        if lx<12 and lx>5 and ly == (y-2) then
            print("back")
            pressNext = false
            shell.run("installer/installerfiles.lua")
        end
        
        if lx>(x-15) and lx<(x-5) and ly == (y-2) then
        print("next") 
        pressNext = false
        shell.run("installer/installer.lua")
        end
    end

end

