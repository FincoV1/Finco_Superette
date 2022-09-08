ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

---- Nourriture ----

RegisterNetEvent('finco:pain') 
AddEventHandler('finco:pain', function() 
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 10 
  local argent = joueur.getMoney()
    if argent >= prix then 
      joueur.removeMoney(prix)
      joueur.addInventoryItem('bread', 1)
      TriggerClientEvent('esx:showNotification', source, "~g~+1 Pain") 
    else 
      TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d\'argent")
    end
end)

RegisterNetEvent('finco:choco') 
AddEventHandler('finco:choco', function() 
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 10 
  local argent = joueur.getMoney()
    if argent >= prix then 
      joueur.removeMoney(prix)
      joueur.addInventoryItem('chocolat', 1)
      TriggerClientEvent('esx:showNotification', source, "~g~+1 Chocolat") 
    else 
      TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d\'argent")
    end
end)

RegisterNetEvent('finco:sandwich') 
AddEventHandler('finco:sandwich', function() 
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 10 
  local argent = joueur.getMoney()
    if argent >= prix then 
      joueur.removeMoney(prix)
      joueur.addInventoryItem('sandwich', 1)
      TriggerClientEvent('esx:showNotification', source, "~g~+1 Sandwich") 
    else 
      TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d\'argent")
    end
end)

---- Boisson ----

RegisterNetEvent('finco:eau') 
AddEventHandler('finco:eau', function() 
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 10 
  local argent = joueur.getMoney()
    if argent >= prix then 
      joueur.removeMoney(prix)
      joueur.addInventoryItem('water', 1)
      TriggerClientEvent('esx:showNotification', source, "~g~+1 Bouteille d'eau") 
    else 
      TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d\'argent")
    end
end)


RegisterNetEvent('finco:fanta') 
AddEventHandler('finco:fanta', function() 
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 10 
  local argent = joueur.getMoney()
    if argent >= prix then 
      joueur.removeMoney(prix)
      joueur.addInventoryItem('fanta', 1)
      TriggerClientEvent('esx:showNotification', source, "~g~+1 Bouteille de Fanta") 
    else 
      TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d\'argent")
    end
end)

RegisterNetEvent('finco:coca') 
AddEventHandler('finco:coca', function() 
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 10 
  local argent = joueur.getMoney()
    if argent >= prix then 
      joueur.removeMoney(prix)
      joueur.addInventoryItem('coca', 1)
      TriggerClientEvent('esx:showNotification', source, "~g~+1 Bouteille de Coca") 
    else 
      TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d\'argent")
    end
end)

---- Item ----

RegisterNetEvent('finco:tel') 
AddEventHandler('finco:tel', function() 
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 10 
  local argent = joueur.getMoney()
    if argent >= prix then 
      joueur.removeMoney(prix)
      joueur.addInventoryItem('tel', 1)
      TriggerClientEvent('esx:showNotification', source, "~g~+1 Téléphone") 
    else 
      TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d\'argent")
    end
end)

RegisterNetEvent('finco:radio') 
AddEventHandler('finco:radio', function() 
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 10 
  local argent = joueur.getMoney()
    if argent >= prix then 
      joueur.removeMoney(prix)
      joueur.addInventoryItem('radio', 1)
      TriggerClientEvent('esx:showNotification', source, "~g~+1 Radio") 
    else 
      TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d\'argent")
    end
end)