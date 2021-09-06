for _,category in pairs{"transport-belt","splitter","underground-belt"} do
    for name,proto in pairs(data.raw[category]) do
        -- belts[name] = proto.localised_name or {"entity-name." .. name}
        proto.collision_mask = {"item-layer", "object-layer", "player-layer", "water-tile", "ground-tile", "transport-belt-layer"}
    end
end

for index, item in pairs(data.raw["transport-belt"]) do
    data.raw["transport-belt"][index].next_upgrade = nil
end
for index, item in pairs(data.raw["underground-belt"]) do
    data.raw["underground-belt"][index].next_upgrade = nil
end
for index, item in pairs(data.raw["splitter"]) do
    data.raw["splitter"][index].next_upgrade = nil
end

local function enableRecipes(name)
    local r = data.raw["recipe"][name]
    if r then
        if r.expensive == nil and r.normal == nil then
            r.enabled = true
            return
        end
        if r.expensive then
            r.expensive.enabled = true
        end
        if r.normal then
            r.normal.enabled = true
        end
    end
end

if settings.startup["research-start-tech"].value then
	enableRecipes("roboport")
	enableRecipes("construction-robot")
	enableRecipes("logistic-chest-passive-provider")
	enableRecipes("logistic-chest-storage")
end

if settings.startup["cheaper-robot-recipes"] then
	local costMultiplier = settings.startup["robot-costs-multipler"].value or 1
	local robotRecipe = {
		{"iron-plate", 1*costMultiplier},
		{"iron-gear-wheel", 1*costMultiplier},
		{"electronic-circuit", 1*costMultiplier},
	}

	local chestRecipe = {
		{"iron-plate", 3*costMultiplier},
		{"electronic-circuit", 1*costMultiplier},
	}

	data.raw.recipe["construction-robot"].ingredients = robotRecipe
	data.raw.recipe["logistic-robot"].ingredients = robotRecipe
	data.raw.recipe["roboport"].ingredients = {
		{"iron-plate", 25*costMultiplier},
		{"iron-gear-wheel", 10*costMultiplier},
		{"electronic-circuit", 10*costMultiplier}
	}

	data.raw.recipe["logistic-chest-passive-provider"].ingredients = chestRecipe
	data.raw.recipe["logistic-chest-storage"].ingredients = chestRecipe
	data.raw.recipe["logistic-chest-active-provider"].ingredients = chestRecipe
	data.raw.recipe["logistic-chest-requester"].ingredients = chestRecipe
	data.raw.recipe["logistic-chest-buffer"].ingredients = chestRecipe
end