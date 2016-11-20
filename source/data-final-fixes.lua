require "libs.all"
require "libs.prototypes.all"

entityCosts = {}
entityCategoryCosts = {}

require "config"


-- entity category costs: This sets the factor in the entityCosts table if it is not set yet
entityCosts = entityCosts or {}
for entityCategory, costFactor in pairs(entityCategoryCosts) do
	-- find all entityNames
	for name, data in pairs(data.raw[entityCategory]) do
		if not entityCosts[name] then
			entityCosts[name] = costFactor;
		end
	end
end

-- entity costs
for recipeName, data in pairs(data.raw.recipe) do
	local results = {} -- array of names of resulting items
	if data.result then table.insert(results,data.result) end
	if data.results then 
		for _,resultData in pairs(data.results) do
			table.insert(results, resultData.name)
		end
	end

	local factor = 1 -- cost factor of this recipe
	for _, name in pairs(results) do
		if entityCosts[name] then factor = factor * entityCosts[name] end
	end
	if factor ~= 1 then
		info(recipeName.." will change costs by "..tostring(factor))
		for _, ingredient in pairs(data.ingredients) do
			if ingredient.type then
				ingredient.amount = round(ingredient.amount * factor)
			else
				ingredient[2] = round(ingredient[2] * factor)
			end
		end
	end
end

-- 