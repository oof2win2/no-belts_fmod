data:extend({
    --early logistics slots
    {
        type = "technology",
        name = "early-character-logistic-slots",
        icon_size = 128,
        icon = "__base__/graphics/technology/logistic-robotics.png",
        effects =
        {
            {
            type = "character-logistic-requests",
            modifier = true
            },

        },
        unit = {
            count = 20,
            ingredients =
            {
            {"automation-science-pack", 1},
            },
            time = 15
        },
        order = "c-k-d",
    },
    --early trash slots
    {
        type = "technology",
        name = "early-character-logistic-trash-slots",
        icon_size = 128,
        icon = "__base__/graphics/technology/logistic-robotics.png",
        effects =
        {
            {
            type = "character-logistic-trash-slots",
            modifier = 6
            },
        },
        unit = {
            count = 20,
            ingredients =
            {
            {"automation-science-pack", 1},
            },
            time = 15
        },
        order = "c-k-d",
    },
    --early worker speed
    {
        type = "technology",
        name = "early-worker-robots-speed",
        icon_size = 128,
        icon = "__base__/graphics/technology/worker-robots-speed.png",
        effects =
        {
            {
            type = "worker-robot-speed",
            modifier = 0.45
            },

        },
        unit = {
            count = 100,
            ingredients =
            {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            },
            time = 30
        },
        order = "c-k-d",
    },
    --early worker cargo capacity
    {
        type = "technology",
        name = "early-worker-robots-storage",
        icon_size = 128,
        icon = "__base__/graphics/technology/worker-robots-storage.png",
        effects =
        {
            {
            type = "worker-robot-storage",
            modifier = 3
            },
        },
        unit = {
            count = 250,
            ingredients =
            {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            },
            time = 30
        },
        order = "c-k-d",
    },
    -- achievement for launching a rocket at all
    {
        type = "finish-the-game-achievement",
        name = "rocket-launch-without-belts",
        icon = "__base__/graphics/achievement/there-is-no-spoon.png",
        icon_size = 128
    },
})