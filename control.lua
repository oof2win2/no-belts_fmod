script.on_init(function ()
    for index, force in pairs(game.forces) do
        game.forces[index].technologies["construction-robotics"].researched = true
        game.forces[index].technologies["logistic-robotics"].researched = true
        game.forces[index].technologies["logistic-system"].researched = true

        if settings.startup["give-quickstart-items"].value == true then
            game.forces[index].technologies["early-worker-robots-speed-1"].researched = true
            game.forces[index].technologies["early-worker-robots-storage-1"].researched = true
            game.forces[index].technologies["early-worker-robots-speed-2"].researched = true
            game.forces[index].technologies["early-worker-robots-storage-2"].researched = true
            
            local created_items = remote.call("freeplay", "get_created_items")
            created_items["power-armor"] = 1
            created_items["solar-panel-equipment"] = 21
            created_items["battery-equipment"] = 2
            created_items["personal-roboport-equipment"] = 1
            created_items["construction-robot"] = 10
            remote.call("freeplay", "set_created_items", created_items)
            log(serpent.line(created_items))
        end
    end
end)