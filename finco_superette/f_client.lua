ESX = nil Citizen.CreateThread(function() while ESX == nil do TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)  Citizen.Wait(0) end end)

local open = false 
local Mainmenu = RageUI.CreateMenu("LTD","Menu")
local item1 = RageUI.CreateSubMenu(Mainmenu,"Nourriture","Menu")
local item2 = RageUI.CreateSubMenu(Mainmenu,"Boisson","Menu")
local item3 = RageUI.CreateSubMenu(Mainmenu,"Item","Menu")
Mainmenu.Closed = function()
    open = false 
    SetPlayerControl(PlayerId(), true, 12)
end 


function shop()
    if open then 
    open = false
    RageUI.Visible(Mainmenu,false)
    return 
    else 
    open = true
    SetPlayerControl(PlayerId(), false, 12)
    RageUI.Visible(Mainmenu, true)
    CreateThread(function()
    while open do 
    RageUI.IsVisible(Mainmenu,function()

    RageUI.Line()
    RageUI.Button("Nourritre", nil, {LeftBadge = RageUI.BadgeStyle.Star,RightLabel = "→" }, true, {onSelected = function() end}, item1)
    RageUI.Button("Boisson", nil, {LeftBadge = RageUI.BadgeStyle.Star,RightLabel = "→" }, true, {onSelected = function() end}, item2)
    RageUI.Button("Item", nil, {LeftBadge = RageUI.BadgeStyle.Star,RightLabel = "→" }, true, {onSelected = function() end}, item3)
    end)
    RageUI.IsVisible(item1,function()
    RageUI.Button("Pain", "~g~100$", {RightLabel = "→" }, true,{
        onSelected = function()
            TriggerServerEvent('finco:pain')
                    end
                })
    RageUI.Button("Chocolat", "~g~100$", {RightLabel = "→" }, true,{
        onSelected = function()
            TriggerServerEvent('finco:choco')
                    end
                })
    RageUI.Button("Sandwich", "~g~100$", {RightLabel = "→" }, true,{
        onSelected = function()
            TriggerServerEvent('finco:sandwich')
                    end
                })                                
            end)
    RageUI.IsVisible(item2,function()
    RageUI.Button("Eau", "~g~100$", {RightLabel = "→" }, true,{
        onSelected = function()
            TriggerServerEvent('finco:eau')
                    end
                })
    RageUI.Button("Coca", "~g~100$", {RightLabel = "→" }, true,{
        onSelected = function()
            TriggerServerEvent('finco:coca')
                    end
                })
    RageUI.Button("Fanta", "~g~100$", {RightLabel = "→" }, true,{
        onSelected = function()
            TriggerServerEvent('finco:fanta')
                    end
                })  
            end)
    RageUI.IsVisible(item3,function()
    RageUI.Button("Téléphone", "~g~100$", {RightLabel = "→" }, true,{
        onSelected = function()
            TriggerServerEvent('finco:tel')
                    end
                })
    RageUI.Button("Radio", "~g~100$", {RightLabel = "→" }, true,{
        onSelected = function()
            TriggerServerEvent('finco:radio')
                    end
                })                                               
            end)               
        Wait(0)
       end
     end)
   end
end





---- Marker ----


local positionltd = {
        {x = 2557.18,  y = 382.4,    z = 107.62},
        {x = -3039.46, y = 585.99,   z = 6.91},
        {x = -3242.34, y = 1001.7,   z = 11.83},
        {x = 547.44,   y = 2671.2,   z = 41.16},
        {x = 1961.43,  y = 3740.94,  z = 31.34},
        {x = 2678.9,   y = 3280.68,  z = 54.24},
        {x = 1729.34,  y = 6414.49,  z = 34.04},
        {x = 25.95,    y = -1345.46, z = 28.5},
        {x = 1136.14,  y = -982.3,   z = 45.42},
        {x = -1223.19, y = -907.07,  z = 11.33},
        {x = -1487.2,  y = -379.53,  z = 39.16},
        {x = -2968.16, y = 390.43,   z = 14.04},
        {x = 1166.02,  y = 2708.99,  z = 37.16},
        {x = 1392.42,  y = 3604.59,  z = 33.98},
        {x = -48.5,    y = -1757.58, z = 28.42},
        {x = 1163.26,  y = -324.1,   z = 68.21},
        {x = -707.67,  y = -914.72,  z = 18.22},
        {x = -1820.71, y = 792.42,   z = 137.12},
        {x = 1698.44,  y = 4924.65,  z = 41.06},
}

Citizen.CreateThread(function()
    while true do
        local wait = 900
        for k,v in pairs(positionltd) do
            local coords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(coords.x, coords.y, coords.z, v.x, v.y, v.z)
            if dist <= 3.0 then
                wait = 1
                DrawMarker(1, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.5, 0.5, 0.5, 0, 255, 0, 255, false, false, p19, false) 
            end
            if dist <= 3.0 then
                wait = 1
                ESX.ShowHelpNotification('Appuyez sur ~INPUT_TALK~ pour ~g~Intéragir~', 1) 
                if IsControlJustPressed(1,51) then
					shop()
                end
            end
        end
    Citizen.Wait(wait)
    end
end)

---- Blips ----

Citizen.CreateThread(function() 
    for k, v in pairs(positionltd) do 
        local blip = AddBlipForCoord(v.x, v.y, v.z) 
            SetBlipSprite  (blip, 59) 
            SetBlipDisplay (blip, 4) 
            SetBlipScale   (blip, 0.5) 
            SetBlipColour  (blip, 2) 
            SetBlipAsShortRange(blip, true) 
            BeginTextCommandSetBlipName('STRING') 
            AddTextComponentSubstringPlayerName('LTD') 
            EndTextCommandSetBlipName(blip) 
    end 
end)
