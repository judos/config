
-- Slow down the speed of all transport-belts
recipeChangeCostsByFactor(recipeNamesOfItems(entityNamesOfCategory("transport-belt", "underground-belt", "splitter")), 2)
changeEntitiesPropertyByFactor( entitiesOfCategory("transport-belt"), "speed", 0.4)

--true means: round the values (decimal values will produce errors for this property)
recipeChangeCostsByFactor(recipeNamesOfItems(entityNamesOfCategory("locomotive", "cargo-wagon", "car")), 0.4, true)
changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "locomotive"), "max_speed", 1.5)
changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "locomotive", "car"), "weight", 0.5)
changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "car"), "inventory_size", 0.25, true)

--true means: round the values (inventory_size which is a decimal value will produce errors at startup of factorio)
changeEntitiesPropertyByFactor( entitiesOfCategory("logistic-container", "container"), "inventory_size", 0.25, true) 
