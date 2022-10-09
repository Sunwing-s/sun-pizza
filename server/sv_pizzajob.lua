local QBCore = exports['qb-core']:GetCoreObject()


QBCore.Functions.CreateCallback('s-pizza:doughingredients', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local start = Ply.Functions.GetItemByName("dough")
    local sauce = Ply.Functions.GetItemByName("tsauce")
    if start ~= nil and sauce ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('s-pizza:maringredients', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local start = Ply.Functions.GetItemByName("pbase")
    local shrimp = Ply.Functions.GetItemByName("shrimp")
    local tomato = Ply.Functions.GetItemByName("tomato")
    local cheese = Ply.Functions.GetItemByName("cheese")
    if start ~= nil and shrimp ~= nil and tomato ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('s-pizza:margingredients', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local start = Ply.Functions.GetItemByName("pbase")
    local tomato = Ply.Functions.GetItemByName("tomato")
    local cheese = Ply.Functions.GetItemByName("cheese")
    if start ~= nil and tomato ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('s-pizza:vesingredients', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local start = Ply.Functions.GetItemByName("pbase")
    local tomato = Ply.Functions.GetItemByName("tomato")
    local cheese = Ply.Functions.GetItemByName("cheese")
    local ham = Ply.Functions.GetItemByName("ham")
    if start ~= nil and tomato ~= nil and cheese ~= nil and ham ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('s-pizza:hawingredients', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local start = Ply.Functions.GetItemByName("pbase")
    local tomato = Ply.Functions.GetItemByName("tomato")
    local cheese = Ply.Functions.GetItemByName("cheese")
    local pine = Ply.Functions.GetItemByName("pineapple")
    if start ~= nil and tomato ~= nil and cheese ~= nil and pine ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('s-pizza:proingredients', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local start = Ply.Functions.GetItemByName("pbase")
    local proc = Ply.Functions.GetItemByName("prosciutto")
    local basil = Ply.Functions.GetItemByName("basil")
    local mozz = Ply.Functions.GetItemByName("mozzarella")
    if start ~= nil and proc ~= nil and basil ~= nil and mozz ~= nil then
        cb(true)
    else
        cb(false)
    end
end)



