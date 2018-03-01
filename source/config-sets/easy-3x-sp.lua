-- RECIPES

recipeChangeCostsForItemsByFactor("stone", 0.5, true)
recipeChangeResultsForItemsByFactor("iron-plate", 3)
recipeChangeResultsForItemsByFactor("copper-plate", 3)

recipeChangeResultsForItemsByFactor("heavy-oil", 2.5)
recipeChangeResultsForItemsByFactor("light-oil", 3)
recipeChangeResultsForItemsByFactor("petroleum-gas", 3.5)

-- ENTITIES

changeEntitiesPropertyByFactor( entitiesOfCategory("transport-belt","splitter","underground-belt"), "speed", 3)

recipeChangeCostsByFactor(recipeNamesOfItems(entityNamesOfCategory("locomotive", "cargo-wagon", "car")), 0.33, true) -- true=round values
changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "locomotive"), "max_speed", 2)
changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "locomotive", "car"), "weight", 0.33)
changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "car"), "inventory_size", 3, true, 1)

changeEntitiesPropertyByFactor( entitiesOfCategory("assembling-machine", "furnace"), "crafting_speed", 3)

changeEntitiesPropertyByFactor( entitiesOfCategory("inserter"), "extension_speed", 3)
changeEntitiesPropertyByFactor( entitiesOfCategory("inserter"), "rotation_speed", 3)

changeEntitiesPropertyByFactor( entitiesOfCategory("mining-drill"), "mining_speed", 3)

changeEntitiesPropertyByFactor( entitiesOfCategory("player"), "running_speed", 2)
changeEntitiesPropertyByFactor( entitiesOfCategory("player"), "mining_speed", 3)

-- TECHNOLOGY

-- pass technologyName (or a list of techs), targetItem (or a list of items) and multiply factor
technologyChangeAmountByFactor("all",0.33)