for index, item in pairs(data.raw.item) do
    if item.subgroup == "belt" then
        local beltList = {"transport-belt", "underground-belt", "splitter"}
        for i, catname in pairs(beltList) do
            for i, it in pairs(data.raw[catname]) do
                if it.name == item.place_result then
                    if type(it.localised_name) == "table" then
                        item.localised_name = it.localised_name
                    else if (it.localised_name) then
                        item.localised_name = { it.localised_name }
                    else 
                        item.localised_name = { "entity-name." ..it.name }
                    end
                end
            end
        end
        item.place_result = nil
        data.raw.item[index] = item
    end
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