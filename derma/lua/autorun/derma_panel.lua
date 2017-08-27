hook.Add( "Think", "MenuKeyListener", function()
    if ( input.IsKeyDown( KEY_F2 ) and !menuOpen ) then --Change KEY_F2 to KEY_F1 or KEY_A to bind it to a different key
        createMenu()
    end
end )


function createMenu()

  local Board = nil
  local Name = "Github"
-- Edit as you wish. Make sure you know what you are doing.
  if not IsValid(Board) then
    Board = vgui.Create("DFrame")
    Board:SetSize(750, 500)
    Board:SetPos(ScrW() / 2 - 325, ScrH() / 2 - 250)
    Board:SetTitle(Name)
    Board:Center()
    Board:MakePopup()
    Board:SetDraggable(true)
    Board:ShowCloseButton(true)
    local MenuPSheet = vgui.Create("DPropertySheet")
    MenuPSheet:SetParent(Board)
    MenuPSheet:SetPos(13, 30)
    MenuPSheet:SetSize(Board:GetWide() - 25, Board:GetTall() - 42)
    local Laws = vgui.Create("HTML", Board)
    Laws:SetPos(25, 50)
    Laws:SetSize(250, 250)
    local Rules = vgui.Create("HTML", Board)
    Rules:SetPos(25, 50)
    Rules:SetSize(250, 250)
    Rules:OpenURL("www.google.co.uk") --Change this asap
    local AdminList = vgui.Create("HTML", Board)
        ContentIcon:SetAdminOnly( true adminOnly ) --This line of code is optional. Remove this to fix various things.
    AdminList:SetPos(25, 50)
    AdminList:SetSize(250, 250)
    local order = {}
    order[3] = {"Laws", Laws, "materials/icon16/user.png", false, false, "Laws of the Land"}
    order[2] = {"Rules", Rules, "materials/icon16/exclamation.png", false, false, "Rules are listed here"}
    order[4] = {"Admin List", AdminList, "materials/icon16/shield.png", false, false, "Admins are listed here"}
  
    for _, tab in pairs(order) do
      MenuPSheet:AddSheet(unpack(tab))
    end
  end
end
