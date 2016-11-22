-- entitiesTable: table of entities from data.raw table
function changeEntitiesPropertyByFactor(entitiesTable, propertyName, factor, roundValues)
	for _,data in pairs(entitiesTable) do
		if data[propertyName] then
			data[propertyName] = data[propertyName] * factor
			if roundValues then data[propertyName] = round(data[propertyName]) end
			info(data.name.."."..propertyName.." * "..tostring(factor).." -> "..tostring(data[propertyName]))
		else
			warn(propertyName.." does not exist for "..data.name)
		end
	end
end
