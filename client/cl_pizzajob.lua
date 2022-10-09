local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('s-pizza:craftmenu', function(data)
    local number = data.number
    local ingredients = data.ingredients
    local event = data.event
    exports['qb-menu']:openMenu({
        {
            header = "Pizza Ugnen",
        },
        {
            header = "Pizza: "..number,
            txt = "Intredientser: "..ingredients,
            params = {
                event = event,
                args = {
                    message = ingredients

                }
            }
        },
        {
            header = "Gå Tillbaka",
            txt = "",
            params = {
                event = "s-pizza:mainmenu",
                args = {
                    message = ingredients

                }
            }
        },
    })
end)

RegisterNetEvent('s-pizza:mainmenu', function(data)
    local number = data.number
    local ingredients = data.ingredients
    exports['qb-menu']:openMenu({
        {
            header = "Välj en Pizza",
        },
        {
            header = "PROSCIUTTO DI PARMA",
            txt = "Extra fin Pizza",
            params = {
                event = "s-pizza:craftmenu",
                args = {
                    number = "PROSCIUTTO DI PARMA",
                    ingredients = "1 st Pizzagrund, 1 st Parma Skinka, 1 st Mozzarella, 1 Basilika",
                    event = "s-pizza:prosciuttocraft", -- byt events
                }
            }
        },
        {
            header = "MARGHARITTA",
            txt = "Extra fin Pizza",
            params = {
                event = "s-pizza:craftmenu",
                args = {
                    number = "MARGHERITA",
                    ingredients = "1 st Tomat, 1 st Ost",
                    event = "s-pizza:margherittacraft",
                }
            }
        },
        {
            header = "VESUVIO",
            txt = "Extra fin Pizza",
            params = {
                event = "s-pizza:craftmenu",
                args = {
                    number = "VESUVIO",
                    ingredients = "1 st Pizzagrund, 1 st Tomat, 1 st Ost, 1 st Skinka",
                    event = "s-pizza:vesuviocraft",
                }
            }
        },
        {
            header = "HAWAII",
            txt = "Extra fin Pizza",
            params = {
                event = "s-pizza:craftmenu",
                args = {
                    number = "HAWAII",
                    ingredients = "1 st Pizzagrund, 1 st Tomat, 1 st Ost, 1 st Annanas",
                    event = "s-pizza:hawaiicraft",
                }
            }
        },
        {
            header = "MARINARA",
            txt = "Extra fin Pizza",
            params = {
                event = "s-pizza:craftmenu",
                args = {
                    number = "MARINARA",
                    ingredients = "1 st Pizzagrund, 1 st Tomat, 1 st Ost, 1 st Räkor",
                    event = "s-pizza:marinaracraft",
                }
            }
        },
    })
end)

RegisterNetEvent('s-pizza:hawaiicraft', function(data)
    QBCore.Functions.TriggerCallback('s-pizza:hawingredients', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Väntar på Ugnen..", 25000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "givetake1_a",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('QBCore:Server:RemoveItem', "pbase", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "tomato", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "cheese", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "pineapple", 1)
                TriggerServerEvent('QBCore:Server:AddItem', "phawaii", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["phawaii"], "add")
                QBCore.Functions.Notify("Nu så har vi en pizza", "success")
            end, function()
                QBCore.Functions.Notify("Avbruten..", "error")
            end)
        else
            QBCore.Functions.Notify("Saknar något", "error")
        end
    end)
end)

RegisterNetEvent('s-pizza:vesuviocraft', function(data)
    QBCore.Functions.TriggerCallback('s-pizza:vesingredients', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Väntar på Ugnen..", 25000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "givetake1_a",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('QBCore:Server:RemoveItem', "pbase", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "tomato", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "cheese", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "ham", 1)
                TriggerServerEvent('QBCore:Server:AddItem', "pvesuvio", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pvesuvio"], "add")
                QBCore.Functions.Notify("Nu så har vi en pizza", "success")
            end, function()
                QBCore.Functions.Notify("Avbruten..", "error")
            end)
        else
            QBCore.Functions.Notify("Saknar något", "error")
        end
    end)
end)

RegisterNetEvent('s-pizza:margherittacraft', function(data)
    QBCore.Functions.TriggerCallback('s-pizza:margingredients', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Väntar på Ugnen..", 25000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "givetake1_a",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('QBCore:Server:RemoveItem', "pbase", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "tomato", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "cheese", 1)
                TriggerServerEvent('QBCore:Server:AddItem', "pmargharitta", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pmargharitta"], "add")
                QBCore.Functions.Notify("Nu så har vi en pizza", "success")
            end, function()
                QBCore.Functions.Notify("Avbruten..", "error")
            end)
        else
            QBCore.Functions.Notify("Saknar något", "error")
        end
    end)
end)

RegisterNetEvent('s-pizza:prosciuttocraft', function(data)
    QBCore.Functions.TriggerCallback('s-pizza:proingredients', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Väntar på Ugnen..", 25000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "givetake1_a",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('QBCore:Server:RemoveItem', "pbase", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "prosciutto", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "basil", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "mozzarella", 1)
                TriggerServerEvent('QBCore:Server:AddItem', "pprosciutto", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pprosciutto"], "add")
                QBCore.Functions.Notify("Nu så har vi en pizza", "success")
            end, function()
                QBCore.Functions.Notify("Avbruten..", "error")
            end)
        else
            QBCore.Functions.Notify("Saknar något", "error")
        end
    end)
end)


RegisterNetEvent('s-pizza:marinaracraft', function(data)
    QBCore.Functions.TriggerCallback('s-pizza:maringredients', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Väntar på Ugnen..", 25000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "givetake1_a",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('QBCore:Server:RemoveItem', "pbase", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "shrimp", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "tomato", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "cheese", 1)
                TriggerServerEvent('QBCore:Server:AddItem', "pbase", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pmarinara"], "add")
                QBCore.Functions.Notify("Nu så har vi en pizza", "success")
            end, function()
                QBCore.Functions.Notify("Avbruten..", "error")
            end)
        else
            QBCore.Functions.Notify("Saknar något", "error")
        end
    end) 
end)

RegisterNetEvent('s-pizza:doughflat', function(data)
    QBCore.Functions.TriggerCallback('s-pizza:doughingredients', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Skapar..", 15000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "givetake1_a",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('QBCore:Server:RemoveItem', "dough", 1)
                TriggerServerEvent('QBCore:Server:RemoveItem', "tsauce", 1)
                TriggerServerEvent('QBCore:Server:AddItem', "pbase", 1)
                TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pbase"], "add")
                QBCore.Functions.Notify("Nu så har vi en pizza grund", "success")
            end, function()
                QBCore.Functions.Notify("Avbruten..", "error")
            end)
        else
            QBCore.Functions.Notify("Saknar något", "error")
        end
    end) 
end)

RegisterNetEvent("s-pizza:shop")
AddEventHandler("s-pizza:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "pizza", Config.Shop)
end)

RegisterNetEvent("s-pizza:dshop")
AddEventHandler("s-pizza:dshop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "pizza1", Config.DShop)
end)

exports['qb-target']:AddBoxZone("s-pizzaoven", vector3(Config.Oven), 1.5, 1.6, {
  name = "s-pizzaoven", 
  heading = 12.0,
  debugPoly = false,
  minZ = 7.7, --remember to change these
  maxZ = 16.9, 
}, {
  options = {
    { 
      type = "client", 
      event = "s-pizza:mainmenu",
      icon = 'fa-solid fa-pizza-slice',
      label = 'Ugnen',
      job = Config.Jobname,
      drawDistance = 10.0,
    },
    { 
        type = "client", 
        event = "s-pizza:stash",
        icon = 'fa-solid fa-pizza-slice',
        label = 'Förråd',
        job = Config.Jobname,
        drawDistance = 10.0,
    },
  },
  distance = 2.5, 
})

exports['qb-target']:AddBoxZone("s-drinkfridge", vector3(Config.Drink), 1.5, 1.6, {
    name = "s-pizzaoven", 
    heading = 12.0,
    debugPoly = false, 
    minZ = 7.7, -- remember to change these
    maxZ = 16.9, -- remember to change these
  }, {
    options = {
      { 
        type = "client", 
        event = "s-pizza:dshop",
        icon = 'fa-solid fa-pizza-slice',
        label = 'Dryckes Kyl',
        job = Config.Jobname, -- byt jobb
        drawDistance = 10.0,
      }
    },
    distance = 2.5, 
})

exports['qb-target']:AddBoxZone("s-doughflat", vector3(Config.Flat), 1.5, 1.6, {
    name = "s-pizzaoven", 
    heading = 12.0,
    debugPoly = false,
    minZ = 7.7, -- remember to change these
    maxZ = 16.9, -- remember to change these
  }, {
    options = {
      { 
        type = "client", 
        event = "s-pizza:doughflat",
        icon = 'fa-solid fa-pizza-slice',
        label = 'Gör klart pizza grunden',
        job = Config.Jobname, -- byt jobb
        drawDistance = 10.0,
      }
    },
    distance = 2.5, 
})

exports['qb-target']:AddBoxZone("s-bench", vector3(Config.Bench), 1.5, 1.6, {
    name = "s-bench", 
    heading = 12.0,
    debugPoly = false,
    minZ = 7.7, -- remember to change these
    maxZ = 16.9, -- remember to change these
  }, {
    options = {
      { 
        type = "client", 
        event = "s-pizza:bench",
        icon = 'fa-solid fa-pizza-slice',
        label = 'Lägg på Bordet',
        drawDistance = 10.0,
      }
    },
    distance = 2.5, 
})

exports['qb-target']:AddBoxZone("s-shop", vector3(Config.Shop), 1.5, 1.6, {
    name = "s-shop", 
    heading = 12.0,
    debugPoly = false,
    minZ = 5.7, -- remember to change these
    maxZ = 12.9, -- remember to change these
  }, {
    options = {
      { 
        type = "client", 
        event = "s-pizza:shop",
        icon = 'fa-solid fa-pizza-slice',
        label = 'Inköp',
        job = Config.Jobname, -- byt jobb
        drawDistance = 10.0,
      }
    },
    distance = 2.5, 
})

RegisterNetEvent("s-pizza:bench")
AddEventHandler("s-pizza:bench", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pizzabench")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pizzabench", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("s-pizza:stash")
AddEventHandler("s-pizza:stash", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pizzastash")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pizzastash", {
        maxweight = 10000,
        slots = 15,
    })
end)
