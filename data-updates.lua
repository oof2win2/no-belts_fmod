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

enableRecipes("roboport")
enableRecipes("construction-robot")
enableRecipes("logistic-chest-passive-provider")
enableRecipes("logistic-chest-storage")

local robotRecipe = {
    {"iron-plate", 1},
    {"iron-gear-wheel", 1},
    {"electronic-circuit", 1},
}

local chestRecipe = {
    {"iron-plate", 3},
    {"electronic-circuit", 1},
}

data.raw.recipe["construction-robot"].ingredients = robotRecipe
data.raw.recipe["logistic-robot"].ingredients = robotRecipe
data.raw.recipe["roboport"].ingredients = {
    {"iron-plate", 25},
    {"iron-gear-wheel", 10},
    {"electronic-circuit", 10}
}

data.raw.recipe["logistic-chest-passive-provider"].ingredients = chestRecipe
data.raw.recipe["logistic-chest-storage"].ingredients = chestRecipe
data.raw.recipe["logistic-chest-active-provider"].ingredients = chestRecipe
data.raw.recipe["logistic-chest-requester"].ingredients = chestRecipe
data.raw.recipe["logistic-chest-buffer"].ingredients = chestRecipe