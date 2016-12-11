-- General recipe changes
recipeChangeCostsForItemsByFactor("iron-plate", 2)
recipeChangeResultsForItemsByFactor("iron-plate", 2)


-- Slow down the speed of all transport-belts
recipeChangeCostsByFactor(recipeNamesOfItems(entityNamesOfCategory("transport-belt", "underground-belt", "splitter")), 2)
changeEntitiesPropertyByFactor( entitiesOfCategory("transport-belt"), "speed", 0.4)

--true means: round the values (decimal values will produce errors for this property)
recipeChangeCostsByFactor(recipeNamesOfItems(entityNamesOfCategory("locomotive", "cargo-wagon", "car")), 0.4, true)
changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "locomotive"), "max_speed", 1.5)
changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "locomotive", "car"), "weight", 0.5)
changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "car"), "inventory_size", 0.25, true, 1)

-- TODO for next time: (access sub properties)
--changeEntitiesPropertyByFactor( entitiesOfCategory("locomotive"), "energy_source.fuel_inventory_size", 0.33, true)

--true means: round the values (inventory_size which is a decimal value will produce errors at startup of factorio)
changeEntitiesPropertyByFactor( entitiesOfCategory("logistic-container", "container"), "inventory_size", 0.25, true, 1) 


-- Change technology: more science packs produced and required
recipeChangeResultsForItemsByFactor({"science-pack-1","science-pack-2"}, 5)
recipeChangeResultsForItemsByFactor("science-pack-3", 25)

-- pass technologyName (or a list of techs), targetItem (or a list of items) and multiply factor
technologyChangeIngredientsAmountByFactor("all",{"science-pack-1","science-pack-2"},5)
technologyChangeIngredientsAmountByFactor("all","science-pack-3",25)