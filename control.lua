require('__debugadapter__/debugadapter.lua')

script.on_init(function ()
    for index, force in pairs(game.forces) do
        game.forces[index].technologies["construction-robotics"].researched = true
        game.forces[index].technologies["logistic-robotics"].researched = true
        game.forces[index].technologies["logistic-system"].researched = true

        if settings.startup["give-quickstart-parmor"].value == true then
            local created_items = remote.call("freeplay", "get_created_items")
            created_items["power-armor"] = 1
            created_items["solar-panel-equipment"] = 21
            created_items["battery-equipment"] = 2
            created_items["personal-roboport-equipment"] = 1
            created_items["construction-robot"] = 10
            remote.call("freeplay", "set_created_items", created_items)
        end
        if settings.startup["give-quickstart-stuff"].value == true then
            local created_items = remote.call("freeplay", "get_created_items")
            created_items["roboport"] = 10
            created_items["logistic-robot"] = 100
            remote.call("freeplay", "set_created_items", created_items)
        end
    end
end)