
-- Slow down the speed of all transport-belts
changeEntitiesPropertyByFactor( entitiesOfCategory("transport-belt"), "speed", 0.4)

entityCategoryCosts["transport-belt"] = 2 -- Change the costs of transport-belts
entityCategoryCosts["underground-belt"] = 2 -- Change the costs of all underground belts
entityCategoryCosts["splitter"] = 2 -- Change the costs of all splitters

entityCategoryCosts["locomotive"] = 0.4
entityCategoryCosts["cargo-wagon"] = 0.3
entityCategoryCosts["car"] = 0.4

changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "locomotive", "car"), "max_speed", 1.5)
changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "locomotive", "car"), "weight", 0.5)
changeEntitiesPropertyByFactor( entitiesOfCategory("cargo-wagon", "car"), "inventory_size", 0.25)

changeEntitiesPropertyByFactor( entitiesOfCategory("logistic-container", "container"), "inventory_size", 0.25)
