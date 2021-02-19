script.on_init(function ()
    for index, force in pairs(game.forces) do
        game.forces[index].technologies["construction-robotics"].researched = true
        game.forces[index].technologies["logistic-robotics"].researched = true
        game.forces[index].technologies["logistic-system"].researched = true
        game.forces[index].technologies["power-armor"].researched = true
    end
end)