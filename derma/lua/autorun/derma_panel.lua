-- First we create a container, in this case it is a full-screen Derma Frame window.
local dframe = vgui.Create( 'DFrame' )
dframe:SetSize( ScrW(), ScrH() )
dframe:SetTitle( "Information" )
dframe:Center()
dframe:MakePopup() -- Enable keyboard and mouse interaction for DFrame panel.

-- Create a new DHTML panel as a child of dframe, and dock-fill it.
local dhtml = vgui.Create( 'DHTML', dframe )
dhtml:Dock( FILL )
-- Navigate to Garry's Mod wikipedia website.
dhtml:OpenURL( 'https://wiki.garrysmod.com/index.php' )
-- Run JavaScript code.
dhtml:Call( [[document.body.innerHTML = 'HTML changed from Lua using JavaScript!';]] )

-- This does not throw an error/exception, but instead returns nil/no value.
-- That means you can't pass/return values from JavaScript back to Lua context using this function.
local number = dhtml:Call( '22;' )
print( number )